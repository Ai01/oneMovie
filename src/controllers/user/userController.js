import { privilegeServer, createUserServer, deleteUserServer, updateUserServer } from 'src/servers';

// TODO:bai 这种写法很奇怪
const userController = {};

userController.createUser = async (ctx) => {
  const hasCreateUserPrivilegeOrNot = await privilegeServer(ctx, ['create_user']);
  if (!hasCreateUserPrivilegeOrNot) {
    ctx.throw(400, '你没有创建用户的权限');
  }

  await createUserServer(ctx);
};

// TODO:bai批量删除怎么写？
// TODO:bai delete应该用body吗？
userController.deleteUser = async (ctx) => {
  const hasCreateUserPrivilegeOrNot = await privilegeServer(ctx, ['delete_user']);
  if (!hasCreateUserPrivilegeOrNot) {
    ctx.throw(400, '你没有删除用户的权限');
  }

  await deleteUserServer(ctx);
};

userController.updateUser = async (ctx) => {
  const hasCreateUserPrivilegeOrNot = await privilegeServer(ctx, ['update_user']);
  if (!hasCreateUserPrivilegeOrNot) {
    ctx.throw(400, '你没有更新用户的权限');
  }

  await updateUserServer(ctx);
};

export default userController;
