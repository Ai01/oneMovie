import Koa from 'koa';
import cors from '@koa/cors';
import bodyParser from 'koa-bodyparser';
import session from 'koa-session';
import router from 'src/controllers';
import { SessionConfig } from './configs/session';

const app = new Koa();

// 错误处理
app.use(async (ctx, next) => {
  try {
    await next();
  } catch (e) {
    console.log(e.code, e.message);
    ctx.status = e.status || 500;
    ctx.body = {
      error: {
        code: e.code || 500,
        message: e.message,
      },
    };
  }
});

// cors
app.use(cors({
  origin: 'http://localhost:4000',
  credentials: true,
}));

// body parser
app.use(bodyParser({
  onerror: (err, ctx) => {
    ctx.throw('body parse error', 422);
  },
}));

// session
app.keys = ['one', 'movie'];
app.use(session(SessionConfig, app));

// router
app.use(router.routes()).use(router.allowedMethods());

export default app;
