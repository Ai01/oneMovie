import { MovieDomain } from 'src/domains';
import { DEFAULT_PAGE_SIZE } from 'src/constant';

const getMoviesServer = async (ctx) => {
  const { request } = ctx;
  const { query } = request;
  const { page } = query;

  const _page = page || 0;

  const movies = await MovieDomain.findAll({
    offset: _page * DEFAULT_PAGE_SIZE,
    limit: DEFAULT_PAGE_SIZE,
  });

  const moviesTotalAmount = await MovieDomain.count({});

  if (movies) {
    ctx.body = {
      movies,
      moviesTotalAmount,
    };
  } else {
    ctx.throw(500, '获取电影失败，发生未知错误');
  }
};

export default getMoviesServer;
