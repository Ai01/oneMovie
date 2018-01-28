import Koa from 'koa';
import Router from 'koa-router';
import cors from '@koa/cors';
import bodyParser from 'koa-bodyparser';
import session from 'koa-session';
import { UserController } from 'src/controllers';

import { SessionConfig } from './configs/session';

const app = new Koa();

// cors
app.use(cors());

// body praser
app.use(bodyParser());

// session
app.keys = ['one', 'movie'];
app.use(session(SessionConfig, app));

// router
const router = new Router();

router.get('/', async (ctx) => {
  ctx.body = 'hello oneMovie';
});

router.post('/token', async (ctx) => {
  await UserController.loginVerify(ctx);
});

app.use(router.routes()).use(router.allowedMethods());

export default app;
