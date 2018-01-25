import { DataTypes } from 'sequelize';
import sequelize from '../sequelize';

const { BIGINT, STRING } = DataTypes;

const User = sequelize.define(
  'User',
  {
    id: {
      type: BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },

    email: {
      type: STRING,
    },

    name: {
      type: STRING,
      allowNull: false,
    },

    phone: {
      type: STRING,
      allowNull: false,
    },

    password: {
      type: STRING,
      allowNull: false,
    },
  },
  {
    indexes: [
      {
        unique: true,
        fields: ['id', 'phone'],
      },
    ],
  },
);


export default User;
