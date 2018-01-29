import { UserDomain } from 'src/domains';
import { sha256Hash } from 'src/utils';

const loginServer = async (ctx) => {
  const { body } = ctx.request;

  const { phone, password } = body;
  if (!phone || !password) {
    ctx.throw(400, '没有手机号码或密码');
  }

  const user = await UserDomain.findOne({
    where: {
      phone,
    },
  });


  if (user) {
    if (user.password !== sha256Hash(password)) {
      ctx.throw(400, '密码错误');
    }

    ctx.session.userId = user.id;
    ctx.body = {
      message: 'welcome to one movie',
    };
  } else {
    ctx.throw(400, '用户不存在');
  }
};

export default loginServer;
