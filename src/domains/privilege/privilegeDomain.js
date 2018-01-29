import { PrivilegeModel } from 'src/models';
import BaseDomain from '../base/baseDomain';

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
      throw new Error('此权限已经存在，请检查');
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
