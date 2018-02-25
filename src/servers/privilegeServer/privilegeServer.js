import { without } from 'lodash';
import { UserDomain } from 'src/domains';

/*
*  ctx: 用来获取用户信息
*  privilegeForAction: [操作权限]
*  返回值是 boolean
* */


// TODO:bai 权限服务应该拆分为登录判断等各个权限的判断，而不是现在这样的笼统

const privilegeServer = async (ctx, privilegeForAction) => {
  const { session } = ctx;
  const { userId } = session;
  if (!userId) {
    ctx.throw(400, '请登录');
  }

  const userInstance = await UserDomain.findOne({
    where: {
      id: userId,
    },
  });

  if (!userInstance) {
    ctx.throw(400, '用户不存在');
  }

  const userPrivileges = await UserDomain.getPrivileges(userInstance);

  // 如果action需要的权限是user权限的子集。也就是without后长度为0
  if (!without(privilegeForAction, ...userPrivileges).length) {
    return true;
  }

  return false;
};

export default privilegeServer;
