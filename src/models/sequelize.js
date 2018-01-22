import Sequelize from 'sequelize';
import { extend } from 'lodash';
import config from 'src/configs/sequelize';

const sequelizeDefaultOptions = {
  host: config.host,
  define: {
    freezeTableName: true,
  },
  dialectOptions: {
    multipleStatements: true,
  },
  typeValidation: true,
  benchmark: true,
  timezone: '+8:00',
  // logging: (l, t) => {
  //   if (t > 500) {
  //     dbLogger.warn({ const: t, message: l, logType: 'db' });
  //   } else {
  //     dbLogger.info({ const: t, message: l, logType: 'db' });
  //   }
  // },
  dialect: 'mysql',
};

const sequelize = new Sequelize(
  config.database,
  config.username,
  config.password,
  extend(sequelizeDefaultOptions, { pool: { max: 20 } }),
);

export default sequelize;
