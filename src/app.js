import Koa from 'koa';

// router
import Router from 'koa-router';

// session
import session from 'koa-session';
import { SessionConfig } from './configs/session';

const app = new Koa();

// session
app.keys = ['one', 'movie'];
app.use(session(SessionConfig, app));

// router
const router = new Router();

router.get('/', (ctx) => {
  ctx.body = 'hello oneMovie';
});

app.use(router.routes()).use(router.allowedMethods());

export default app;
