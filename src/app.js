import Koa from 'koa';

// router
import Router from 'koa-router';

// session
import session from 'koa-session';
import { SessionConfig } from './configs/session';

import UserDomain from './models/user/userDomain';

const app = new Koa();

// session
app.keys = ['one', 'movie'];
app.use(session(SessionConfig, app));

// router
const router = new Router();

router.get('/', async (ctx) => {
  const testUser = {
    name: 'test',
    password: 'test',
    phone: '1111111111111',
    email: 'test@test.com',
  };

  await UserDomain.create(testUser);

  ctx.body = 'hello oneMovie';
});

app.use(router.routes()).use(router.allowedMethods());

export default app;
