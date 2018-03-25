import {
  privilegeServer,
  createUserServer,
  deleteUserServer,
  updateUserServer,
  sendMailServer,
  getUserServer,
} from 'src/servers';


const getUser = async (ctx) => {
  const hasGetUserPrivilege = await privilegeServer(ctx, ['get_user']);
  if (!hasGetUserPrivilege) {
    ctx.throw(400, '你没有获取用户信息的权限');
  }

  await getUserServer(ctx);
};

// 创建用户没有权限限制
const createUser = async (ctx) => {
  await createUserServer(ctx);
  await sendMailServer({ content: 'test', sendMailTo: 'baihaihui131225@gmail.com' });
};

// TODO:bai批量删除怎么写？
// TODO:bai delete应该用body吗？
const deleteUser = async (ctx) => {
  const hasCreateUserPrivilegeOrNot = await privilegeServer(ctx, ['delete_user']);
  if (!hasCreateUserPrivilegeOrNot) {
    ctx.throw(400, '你没有删除用户的权限');
  }

  await deleteUserServer(ctx);
};

const updateUser = async (ctx) => {
  const hasCreateUserPrivilegeOrNot = await privilegeServer(ctx, ['update_user']);
  if (!hasCreateUserPrivilegeOrNot) {
    ctx.throw(400, '你没有更新用户的权限');
  }

  await updateUserServer(ctx);
};

const userController = {
  createUser,
  deleteUser,
  updateUser,
  getUser,
};

export default userController;
