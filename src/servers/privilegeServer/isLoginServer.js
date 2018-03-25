const isLoginServer = async (ctx) => {
  const { session } = ctx;
  const { userId } = session;
  if (!userId) {
    ctx.throw(400, '请登录');
    return false;
  }
  return true;
};

export default isLoginServer;
