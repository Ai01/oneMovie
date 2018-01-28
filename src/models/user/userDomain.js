import hash from 'src/utils/myCrypto';
import BaseDomain from '../base/baseDomain';
import UserModel from './userModel';

class UserDomain extends BaseDomain {
  static model = UserModel;

  static async create(account, options) {
    const {
      name, password, phone, email,
    } = account;
    const u = await UserDomain.findOne({
      where: {
        phone,
      },
      ...options,
    });

    if (u) {
      throw new Error('此手机号已经存在，请检查');
    }

    return await super.create(
      {
        name,
        password: hash(password),
        phone,
        email,
        status: 'active',
      },
      options,
    );
  }

  static async findUserByNameAndPassword(userName, password) {
    const UserInDatabase = UserDomain.findOne({
      where: {
        password: hash(password),
        name: userName,
      },
    });
    return UserInDatabase;
  }

  static async updateUser(userData) {
    const { userInfo, userId } = userData;
    if (!userId) {
      throw new Error('没有useId');
    }
    if (!userInfo) {
      return await UserDomain.findOne({
        where: {
          id: userId,
        },
      });
    }

    return await UserDomain.update(userInfo, {
      where: {
        id: userId,
      },
    });
  }
}

export default UserDomain;
