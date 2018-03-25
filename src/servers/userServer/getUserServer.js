import { UserDomain } from 'src/domains';

const getUserServer = async (ctx) => {
  const { id: userId } = ctx.params || {};
  const userInstance = await UserDomain.findOne({ where: { id: userId } });

  if (userInstance) {
    ctx.body = {
      user: userInstance,
    };
  } else {
    ctx.throw(400, '用户不存在');
  }
};

export default getUserServer;
