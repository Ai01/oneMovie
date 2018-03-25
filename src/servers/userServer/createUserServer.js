import { UserDomain } from 'src/domains';

const createUserServer = async (ctx) => {
  const { request } = ctx;
  const { body } = request;
  const { userInfo } = body;
  const newUserInstance = await UserDomain.create(userInfo);

  if (newUserInstance) {
    ctx.body = {
      user: { name: newUserInstance.name, phone: newUserInstance.phone, email: newUserInstance.email },
    };
  } else {
    ctx.throw(500, '创建用户失败，发生未知错误');
  }
};

export default createUserServer;
