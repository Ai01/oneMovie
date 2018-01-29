import Koa from 'koa';
import cors from '@koa/cors';
import bodyParser from 'koa-bodyparser';
import session from 'koa-session';
import router from 'src/controllers';
import { SessionConfig } from './configs/session';

const app = new Koa();

// cors
app.use(cors());

// body praser
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
