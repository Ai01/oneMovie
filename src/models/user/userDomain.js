import BaseDomain from '../base/baseDomain';
import UserModel from './userModel';

class UserDomain extends BaseDomain {
  static model = UserModel;

  static async create(account, options) {
    const {
      name, password, phone, email,
    } = account;
    // const u = await UserDomain.findOne({
    //   where: {
    //     phone,
    //   },
    //   ...options,
    // });
    //
    // if (u) {
    //   throw new Error('此手机号已经存在，请检查');
    // }

    return super.create(
      {
        name,
        password,
        phone,
        email,
        status: 'active',
      },
      options,
    );
  }
}

export default UserDomain;
