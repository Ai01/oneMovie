import { RoleModel } from 'src/models';
import BaseDomain from '../base/baseDomain';

class RoleDomain extends BaseDomain {
  static model = RoleModel;

  static async create(role, options) {
    const { name, privileges } = role;
    const u = await RoleDomain.findOne({
      where: {
        name,
      },
      ...options,
    });

    if (u) {
      throw new Error('此角色已经存在，请检查');
    }

    return await super.create(
      {
        name,
        privileges,
      },
      options,
    );
  }
}

export default RoleDomain;
