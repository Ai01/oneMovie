import fetch from 'node-fetch';
import cheerio from 'cheerio';
import { MovieDomain } from 'src/domains';

// 获取爬虫的目标url
const getTargetDoubanMovieUrl = (page, pageSize = 25) => `https://movie.douban.com/top250?start=${pageSize * page}`;


// 从url拉取html
const getHtml = async (targetUrl, options) => await fetch(targetUrl, options);


// 从html中获得数据
const getDataFromHtml = (htmlCode) => {
  const movies = []; // 保存从html中解析出来的电影数据
  const $ = cheerio.load(htmlCode);
  $('.item').each(function () {
    const movie = {
      name: $('.title', this).text(),
      grade: $('.star .rating_num', this).text(),
      resourceLink: $('a', this).attr('href'),
      pictureUrl: $('.pic img', this).attr('src'),
    };
    movies.push(movie);
  });
  return movies;
};


// 将数据插入数据库
const saveData = async (movies) => {
  if (Array.isArray(movies)) {
    await Promise.all(movies.map(async m => await MovieDomain.create(m)));
  }
};


const main = async () => {
  const targetUrls = [];
  for (let i = 0; i < 10; i += 1) {
    targetUrls.push(getTargetDoubanMovieUrl(i));
  }

  const htmls = [];

  await Promise.all(targetUrls.map(async (url) => {
    const code = await getHtml(url);
    const body = await code.text();
    htmls.push(body);
  }));

  let movies = [];

  await Promise.all(htmls.map(async (h) => {
    const data = await getDataFromHtml(h);
    movies = movies.concat(data);
  }));


  await saveData(movies);
};


export default main;
