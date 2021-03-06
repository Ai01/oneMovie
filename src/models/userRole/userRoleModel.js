import { DataTypes } from 'sequelize';
import sequelize from '../sequelize';

const { BIGINT, INTEGER } = DataTypes;

const UserRole = sequelize.define('UserRole', {
  UserId: {
    type: BIGINT,
    allowNull: false,
  },

  RoleId: {
    type: INTEGER,
    allowNull: false,
  },
}, {
  indexes: [
    {
      fields: ['UserId', 'RoleId'],
    },
  ],
});

export default UserRole;
