import DataType from 'sequelize';
import sequelize from '../sequelize';

const UserRole = sequelize.define('UserRole', {
  UserId: {
    type: DataType.BIGINT,
    allowNull: false,
  },

  RoleId: {
    type: DataType.INTEGER,
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
