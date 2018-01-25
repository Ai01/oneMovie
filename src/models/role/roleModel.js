import { DataTypes } from 'sequelize';
import sequelize from '../sequelize';

const { STRING } = DataTypes;

const Role = sequelize.define('Role', {
  name: {
    type: STRING(32),
    allowNull: false,
  },

  privileges: {
    type: STRING(1024),
    defaultValue: '',
    get() {
      return this.getDataValue('privileges').split(';');
    },
    set(val) {
      this.setDataValue('privileges', val.join(';'));
    },
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
