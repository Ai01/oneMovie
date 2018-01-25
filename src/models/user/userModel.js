import DataType from 'sequelize';
import sequelize from '../sequelize';

const User = sequelize.define(
  'User',
  {
    type: {
      type: new DataType.VIRTUAL(DataType.STRING),
      get() {
        return 'UserType';
      },
    },

    id: {
      type: DataType.BIGINT,
      primaryKey: true,
      autoIncrement: true,
    },

    email: {
      type: DataType.STRING,
    },

    name: {
      type: DataType.STRING,
      allowNull: false,
    },

    phone: {
      type: DataType.STRING,
      allowNull: false,
    },

    password: {
      type: DataType.STRING,
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
