import { DataTypes } from 'sequelize';
import sequelize from '../sequelize';

const { STRING, BIGINT } = DataTypes;

const Privilege = sequelize.define('Privilege', {
  id: {
    type: BIGINT,
    primaryKey: true,
    autoIncrement: true,
  },

  name: {
    type: STRING(32),
    allowNull: false,
  },
});

export default Privilege;
