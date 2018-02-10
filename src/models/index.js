import UserModel from './user/userModel';
import RoleModel from './role/roleModel';
import PrivilegeModel from './privilege/privilegeModel';
import UserRoleModel from './userRole/userRoleModel';
import RolePrivilegeModel from './rolePrivilege/rolePrivilegeModel';
import MovieModel from './movie/movieModel';


UserModel.belongsToMany(RoleModel, {
  through: UserRoleModel,
});

RoleModel.belongsToMany(UserModel, {
  through: UserRoleModel,
});

RoleModel.belongsToMany(PrivilegeModel, {
  through: RolePrivilegeModel,
});

PrivilegeModel.belongsToMany(RoleModel, {
  through: RolePrivilegeModel,
});

export {
  UserModel,
  RoleModel,
  UserRoleModel,
  PrivilegeModel,
  RolePrivilegeModel,
  MovieModel,
};
