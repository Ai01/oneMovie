import hash from 'src/utils/myCrypto';
import createError from 'src/error/baseError';
import { UserModel } from 'src/models';
import BaseDomain from '../base/baseDomain';

const checkName = (name) => {
  if (!name) {
    return false;
  }

  return true;
};


class UserDomain extends BaseDomain {
  static model = UserModel;

  static async create(account, options) {
    if (!account) {
      throw new Error('没有用户信息');
    }

    const {
      name, password, phone, email,
    } = account;
    if (!checkName(name)) {
      throw createError('用户名格式不正确', 400);
    }

    if (!password) {
      throw createError('密码格式不正确', 400);
    }
    if (!phone) {
      throw createError('手机格式不正确', 400);
    }
    if (!email) {
      throw createError('email格式不正确', 400);
    }

    const u = await UserDomain.findOne({
      where: {
        phone,
      },
      ...options,
    });

    if (u) {
      throw createError('该手机号已经注册了', 400);
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
