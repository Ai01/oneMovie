import { getMoviesServer } from 'src/servers';


const getMovies = async ctx => await getMoviesServer(ctx);

const movieController = {
  getMovies,
};

export default movieController;

