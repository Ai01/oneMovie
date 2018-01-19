import app from './src/app';

const serverConfig = {
  port: 8040,
};

app.listen(serverConfig.port, () => {
  console.log(`oneMovie backend already running on http://localhost:${serverConfig.port}`);
});
