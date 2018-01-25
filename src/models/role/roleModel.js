import { DataTypes } from 'sequelize';
import sequelize from '../sequelize';

const { STRING, BIGINT } = DataTypes;

const Role = sequelize.define('Role', {
  id: {
    type: BIGINT,
    primaryKey: true,
    autoIncrement: true,
  },

  name: {
    type: STRING(32),
    allowNull: false,
  },

  desc: {
    type: STRING(128),
    allowNull: true,
  },
}, {
  indexes: [
    {
      unique: true,
      fields: ['id', 'name'],
    },
  ],
});

export default Role;
