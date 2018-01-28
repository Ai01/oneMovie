import UserDomain from 'src/models/user/userDomain';

const userController = {};
userController.loginVerify = async (ctx) => {
  const { request } = ctx;
  const { body } = request;
  const { userName, password } = body;
  const UserInDatabase = await UserDomain.findUseByNameAndPassword(userName, password);
  if (UserInDatabase) {
    ctx.body = {
      session: 'success',
    };
  } else {
    ctx.throw(401, 'access_denied', { user: UserInDatabase });
  }
};

export default userController;
