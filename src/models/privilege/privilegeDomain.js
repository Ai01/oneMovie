import BaseDomain from '../base/baseDomain';
import PrivilegeModel from './privilegeModel';

class PrivilegeDomain extends BaseDomain {
  static model = PrivilegeModel

  static async create(account, options) {
    const { name } = account;
    const u = await PrivilegeDomain.findOne({
      where: {
        name,
      },
      ...options,
    });

    if (u) {
      throw new Error('此手机号已经存在，请检查');
    }

    await super.create(
      {
        name,
      },
      options,
    );
  }
}

export default PrivilegeDomain;
