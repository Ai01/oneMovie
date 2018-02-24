import { getMoviesServer, privilegeServer } from 'src/servers';

const getMovies = async (ctx) => {
  const hasPrivilegeOrNot = await privilegeServer(ctx, ['get_movies']);
  if (!hasPrivilegeOrNot) {
    ctx.throw(400, '你没有获取所有电影的权限');
  }
  await getMoviesServer(ctx);
};

const movieController = {
  getMovies,
};

export default movieController;
