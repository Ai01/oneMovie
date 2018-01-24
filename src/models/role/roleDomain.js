import RoleModel from './roleModel';
import BaseDomain from '../base/baseDomain';

class RoleDomain extends BaseDomain {
  static model = RoleModel;

  static async create(account, options) {
    const { name, privileges } = account;
    const u = await RoleDomain.findOne({
      where: {
        name,
      },
      ...options,
    });

    if (u) {
      throw new Error('此角色已经存在，请检查');
    }

    await super.create(
      {
        name,
        privileges,
      },
      options,
    );
  }
}

export default RoleDomain;
