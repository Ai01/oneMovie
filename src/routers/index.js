import Router from 'koa-router';
import { UserController } from 'src/controllers';

const router = new Router();

router.get('/', async (ctx) => {
  ctx.body = 'hello oneMovie';
});

router.post('/token', async (ctx) => {
  await UserController.userExistVerify(ctx);
});

router.post('/user', async (ctx) => {
  await UserController.createUser(ctx);
});

router.delete('/user/:id', async (ctx) => {
  await UserController.deleteUser(ctx);
});

// client提供改变的全部属性
router.put('/user/:id', async (ctx) => {
  await UserController.updateUser(ctx);
});

// client提供部分改变的属性
router.patch('/user/:id', async (ctx) => {
  await UserController.updateUser(ctx);
});

export default router;
