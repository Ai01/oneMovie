import hash from 'src/utils/myCrypto';
import { UserModel } from 'src/models';
import BaseDomain from '../base/baseDomain';

class UserDomain extends BaseDomain {
  static model = UserModel;

  static async create(account, options) {
    if (!account) {
      throw new Error('没有用户信息');
    }
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

  static async updateUser(userData, options) {
    const { userId, ...rest } = userData;
    if (!userId) {
      throw new Error('没有useId');
    }
    if (!rest) {
      return await UserDomain.findOne({
        where: {
          id: userId,
        },
      });
    }

    return await UserDomain.update(rest, {
      ...options,
      where: {
        id: userId,
      },
    });
  }

  static async getRoles(userInstance) {
    return await userInstance.getRoles();
  }

  static async getPrivileges(userInstance) {
    const allPrivileges = [];
    const roles = await UserDomain.getRoles(userInstance);
    const rolesPrivileges = await Promise.all(roles.map(async role => await role.getPrivileges()));
    rolesPrivileges.forEach((ps) => {
      ps.forEach((p) => {
        if (allPrivileges.indexOf(p && p.name) === -1) {
          allPrivileges.push(p && p.name);
        }
      });
    });
    return allPrivileges.filter(i => !!i);
  }
}

export default UserDomain;
