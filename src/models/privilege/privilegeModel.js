import { DataTypes } from 'sequelize';
import sequelize from '../sequelize';

const { STRING } = DataTypes;

const Privilege = sequelize.define('Privilege', {
  name: {
    type: STRING(32),
    allowNull: false,
  },
});

export default Privilege;
