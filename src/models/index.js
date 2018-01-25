import RoleDomain from './role/roleDomain';
import RoleModel from './role/roleModel';

import UserDomain from './user/userDomain';
import UserModel from './user/userModel';

import UserRoleModel from './userRole/userRoleModel';

import PrivilegeModel from './privilege/privilegeModel';
import PrivilegeDomain from './privilege/privilegeDomain';

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
  RoleDomain,
  UserDomain,
  UserRoleModel,
  PrivilegeModel,
  PrivilegeDomain,
  RolePrivilegeModel,
};
