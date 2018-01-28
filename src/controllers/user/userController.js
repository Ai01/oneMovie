import { UserDomain } from 'src/models';

const userController = {};
userController.userExistVerify = async (ctx) => {
  const { request } = ctx;
  const { body } = request;
  const { userName, password } = body;
  const UserInDatabase = await UserDomain.findUserByNameAndPassword(userName, password);
  if (UserInDatabase) {
    ctx.body = {
      session: 'success',
    };
  } else {
    ctx.throw(401, 'access_denied', { user: UserInDatabase });
  }
};

userController.createUser = async (ctx) => {
  const { request } = ctx;
  const { body } = request;
  const { userInfo } = body;
  const newUserInstance = await UserDomain.create(userInfo);
  if (newUserInstance) {
    ctx.body = {
      user: newUserInstance,
    };
  } else {
    ctx.throw(500);
  }
};

// TODO:bai批量删除怎么写？
// TODO:bai delete应该用body吗？
userController.deleteUser = async (ctx) => {
  const { id: userId } = ctx.params;
  await UserDomain.destroy({
    where: {
      id: userId,
    },
  }).then(() => {
    ctx.body = {
      message: '删除成功',
    };
  });
};

userController.updateUser = async (ctx) => {
  const { request, params } = ctx;
  const { id: userId } = params;
  const { body } = request;
  const { userInfo } = body;

  const newUserInstance = await UserDomain.updateUser({
    userInfo,
    userId,
  });

  if (newUserInstance) {
    ctx.body = {
      result: newUserInstance[0] === 1,
    };
  } else {
    ctx.throw(500);
  }
};

export default userController;
