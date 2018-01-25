import { DataTypes } from 'sequelize';
import sequelize from '../sequelize';

const { BIGINT, INTEGER } = DataTypes;

const RolePrivilege = sequelize.define('RolePrivilege', {
  RoleId: {
    type: BIGINT,
    allowNull: false,
  },

  PrivilegeId: {
    type: INTEGER,
    allowNull: false,
  },
}, {
  indexes: [
    {
      fields: ['RoleId', 'PrivilegeId'],
    },
  ],
});

export default RolePrivilege;
