const Accounts = [
  {
    name: 'root',
    password: 'admin',
    phone: '11111111111',
    email: 'root@root.com',
  },
  {
    name: 'test',
    password: 'test',
    phone: '11111111112',
    email: 'test@test.com',
  },
];

const Roles = [
  {
    name: 'admin',
  },
  {
    name: 'guest',
  },
];

const Privileges = [
  {
    name: 'create_user',
  },
  {
    name: 'update_user',
  },
  {
    name: 'delete_user',
  },
];

const Movies = [
  {
    name: '七宗罪',
    resourceLink: 'https://movie.douban.com/subject/1292223/',
    releaseDate: '2018/1/10',
    director: 'xxx',
    desc: '七宗罪 / Se7en七宗罪 / Se7en七宗罪 / Se7en七宗罪 / Se7en七宗罪 / Se7en七宗罪 / Se7en七宗罪 / Se7en七宗罪 / Se7en',
    posterUrl: 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p457631605.jpg',
    grade: 8.7,
  },
  {
    name: '宗罪',
    resourceLink: 'https://movie.douban.com/subject/1292223/',
    releaseDate: '2018/1/10',
    director: 'xxx',
    desc: '宗罪 / Se7en宗罪 / Se7en宗罪 / Se7en宗罪 / Se7en宗罪 / Se7en宗罪 / Se7en七罪 / Se7en宗罪 / Se7en',
    posterUrl: 'https://img3.doubanio.com/view/photo/s_ratio_poster/public/p457631605.jpg',
    grade: 8,
  },
];

export {
  Accounts,
  Roles,
  Privileges,
  Movies,
};
