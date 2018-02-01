import { RoleDomain } from 'src/domains';

const updateRoleServer = async (ctx) => {
  const { request, params } = ctx;
  const { body } = request;
  const { id: roleId } = params;
  const { roleInfo } = body;

  const roleInstance = await RoleDomain.findOne({
    where: {
      id: roleId,
    },
  });

  if (!roleInstance) {
    ctx.throw(400, '角色不存在');
  }

  const newRoleInstance = await RoleDomain.update(roleInfo, {
    where: {
      id: roleId,
    },
  });

  if (newRoleInstance) {
    ctx.body = {
      result: newRoleInstance[0] === 1,
    };
  } else {
    ctx.throw(500, '更新角色失败，发生未知错误');
  }
};

export default updateRoleServer;
