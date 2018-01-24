import DataType from 'sequelize';
import sequelize from '../sequelize';

const Role = sequelize.define('Role', {
  name: {
    type: DataType.STRING(32),
    allowNull: false,
  },

  privileges: {
    type: DataType.STRING(1024),
    defaultValue: '',
    get() {
      return this.getDataValue('privileges').split(';');
    },
    set(val) {
      this.setDataValue('privileges', val.join(';'));
    },
  },

  desc: {
    type: DataType.STRING(128),
    allowNull: true,
  },
});

export default Role;
