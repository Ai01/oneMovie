import { RoleDomain } from 'src/domains';
// import { UserRoleModel } from 'src/models';


const deleteRoleServer = async (ctx) => {
  const { params } = ctx;
  const { id: roleId } = params;

  // 如果这个角色还有人在使用是不可以删除的
  const roleInstance = await RoleDomain.findOne({
    where: {
      id: roleId,
    },
  });

  if (!roleInstance) {
    ctx.throw(400, '角色不存在');
  }

  const usersWithThisRole = await roleInstance.getUsers();

  if (usersWithThisRole && usersWithThisRole.length) {
    ctx.throw(400, '角色使用中，不可以删除');
  }

  await RoleDomain.destroy({
    where: {
      id: roleId,
    },
  });
};

export default deleteRoleServer;
