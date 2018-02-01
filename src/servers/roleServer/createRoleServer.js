import { RoleDomain } from 'src/domains';

const createRoleServer = async (ctx) => {
  const { request } = ctx;
  const { body } = request;
  const { roleInfo } = body;
  const newRoleInstance = await RoleDomain.create(roleInfo);
  if (newRoleInstance) {
    ctx.body = {
      role: newRoleInstance,
    };
  } else {
    ctx.throw(500, '创建角色失败，发生未知错误');
  }
};

export default createRoleServer;
