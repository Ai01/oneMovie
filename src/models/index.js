import RoleDomain from './role/roleDomain';
import RoleModel from './role/roleModel';

import UserDomain from './user/userDomain';
import UserModel from './user/userModel';

import UserRoleModel from './userRole/userRoleModel';


RoleModel.belongsToMany(UserModel, {
  through: UserRoleModel,
  constraints: false,
});

UserModel.belongsToMany(RoleModel, {
  through: UserRoleModel,
  constraints: false,
});


export {
  UserModel,
  RoleModel,
  RoleDomain,
  UserDomain,
  UserRoleModel,
};
