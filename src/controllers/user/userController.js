import { privilegeServer, createUserServer, deleteUserServer, updateUserServer, sendMailServer } from 'src/servers';

const createUser = async (ctx) => {
  // const hasCreateUserPrivilegeOrNot = await privilegeServer(ctx, ['create_user']);
  // if (!hasCreateUserPrivilegeOrNot) {
  //   ctx.throw(400, '你没有创建用户的权限');
  // }

  await createUserServer(ctx);
  await sendMailServer({ content: 'test', sendMailTo: 'baihaihui131225@gmail.com'});
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
};

export default userController;
