import Koa from 'koa';

// router
import Router from 'koa-router';

// session
import session from 'koa-session';
import { SessionConfig } from "./configs/session";

const app = new Koa();

// session
app.keys = ['one movie key'];
app.use(session(SessionConfig, app));

// router
const router = new Router();

router.get('/', (ctx) => {
  // ignore favicon
  if (ctx.path === '/favicon.ico') return;

  let n = ctx.session.views || 0;
  ctx.session.views = ++n;
  ctx.body = n + ' views';
});

app
  .use(router.routes())
  .use(router.allowedMethods());


export default app;
