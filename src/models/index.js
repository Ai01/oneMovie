import UserModel from './user/userModel';
import RoleModel from './role/roleModel';
import PrivilegeModel from './privilege/privilegeModel';
import UserRoleModel from './userRole/userRoleModel';
import RolePrivilegeModel from './rolePrivilege/rolePrivilegeModel';


UserModel.belongsToMany(RoleModel, {
  through: UserRoleModel,
  constraints: false,
});

RoleModel.belongsToMany(UserModel, {
  through: UserRoleModel,
  constraints: false,
});

RoleModel.belongsToMany(PrivilegeModel, {
  through: RolePrivilegeModel,
  constraints: false,
});

PrivilegeModel.belongsToMany(RoleModel, {
  through: RolePrivilegeModel,
  constraints: false,
});

export {
  UserModel,
  RoleModel,
  UserRoleModel,
  PrivilegeModel,
  RolePrivilegeModel,
};
