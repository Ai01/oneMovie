
// user
export createUserServer from './userServer/createUserServer';
export deleteUserServer from './userServer/deleteUserServer';
export updateUserServer from './userServer/updateUserServer';

// role
export deleteRoleServer from './roleServer/deleteRoleServer';
export createRoleServer from './roleServer/createRoleServer';
export updateRoleServer from './roleServer/updateRoleServer';

// privilege
export privilegeServer from './privilegeServer/privilegeServer';

// login
export loginServer from './loginServer/loginServer';

// movies

export insertDoubanMovies from './moviesSpiderServer/insertDoubanMovies/doubanMovieSpider';
export getMoviesServer from './movieServer/getMoviesServer';

export default 'dummy';
