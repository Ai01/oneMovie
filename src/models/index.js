import RoleDomain from './role/roleDomain';
import RoleModel from './role/roleModel';

import UserDomain from './user/userDomain';
import UserModel from './user/userModel';

import UserRoleModel from './userRole/userRoleModel';

// TODO:bai 将表的关系放在这里是需要所有的表都建立了。这个理解是正确的吗？

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
