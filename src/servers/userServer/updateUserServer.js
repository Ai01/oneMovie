import { UserDomain } from 'src/domains';

const updateUserServer = async (ctx) => {
  const { request, params } = ctx;
  const { id: userId } = params;
  const { body } = request;
  const { userInfo } = body;

  // TODO:bai userInfo判断

  const newUserInstance = await UserDomain.updateUser({
    userInfo,
    userId,
  });

  if (newUserInstance) {
    ctx.body = {
      result: newUserInstance[0] === 1,
    };
  } else {
    ctx.throw(500, '更新用户失败, 发生未知错误');
  }
};

export default updateUserServer;
