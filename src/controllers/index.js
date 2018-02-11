import Router from 'koa-router';
import { loginServer } from 'src/servers';
import UserController from './user/userController';
import RoleController from './role/roleController';
import MovieController from './movie/movieController';

const router = new Router();

router.get('/', async (ctx) => {
  ctx.body = 'hello oneMovie';
});

// token (login)

router.post('/token', async (ctx) => {
  await loginServer(ctx);
});

// user

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


// role

router.post('/role', async (ctx) => {
  await RoleController.createRole(ctx);
});

router.delete('/role/:id', async (ctx) => {
  await RoleController.deleteRole(ctx);
});

router.put('/role/:id', async (ctx) => {
  await RoleController.updateRole(ctx);
});

// movie
router.get('/movies', async (ctx) => {
  await MovieController.getMovies(ctx);
});

export default router;
