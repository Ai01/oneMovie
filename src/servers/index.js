
// mail

export sendMailServer from './mailServer/sendMail';

// user
export createUserServer from './userServer/createUserServer';
export deleteUserServer from './userServer/deleteUserServer';
export updateUserServer from './userServer/updateUserServer';
export getUserServer from './userServer/getUserServer';

// role
export deleteRoleServer from './roleServer/deleteRoleServer';
export createRoleServer from './roleServer/createRoleServer';
export updateRoleServer from './roleServer/updateRoleServer';

// privilege
export privilegeServer from './privilegeServer/privilegeServer';
export isLoginServer from './privilegeServer/isLoginServer';

// login
export loginServer from './loginServer/loginServer';

// movies
export insertDoubanMovies from './moviesSpiderServer/insertDoubanMovies/doubanMovieSpider';
export getMoviesServer from './movieServer/getMoviesServer';


export default 'dummy';
