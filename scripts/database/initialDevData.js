import {
  UserRoleModel,
  RoleModel,
  UserModel,
  PrivilegeModel,
  RolePrivilegeModel,
} from 'src/models';

import {
  RoleDomain,
  UserDomain,
  PrivilegeDomain,
} from 'src/domains';

const Accounts = [
  {
    name: 'U-a',
    password: 'a',
    phone: '1111111111',
    email: 'a@a.com',
  },
  {
    name: 'U-b',
    password: 'b',
    phone: '1111111112',
    email: 'b@b.com',
  },
];

const Roles = [
  {
    name: 'R-a',
  },
  {
    name: 'R-b',
  },
];

const Privileges = [
  {
    name: 'create_user',
  },
  {
    name: 'update_user',
  },
  {
    name: 'delete_user',
  },
];

// 初始化权限数据
const initialPrivilegeData = async () => {
  // create table
  await UserModel.sync({
    force: true,
  });
  await RoleModel.sync({
    force: true,
  });
  await UserRoleModel.sync({
    force: true,
  });
  await PrivilegeModel.sync({
    force: true,
  });
  await RolePrivilegeModel.sync({
    force: true,
  });

  // create users
  await Promise.all(Accounts.map(async (i) => {
    await UserDomain.create(i);
  }));

  // create roles
  await Promise.all(Roles.map(async (i) => {
    await RoleDomain.create(i);
  }));

  // create privileges
  await Promise.all(Privileges.map(async (i) => {
    await PrivilegeDomain.create(i);
  }));

  // assign user role
  const allUsers = await UserDomain.findAll();
  const allRoles = await RoleDomain.findAll();
  if (allUsers && allRoles) {
    await Promise.all(allUsers.map(async (user) => {
      await user.setRoles(allRoles);
    })).catch((e) => {
      console.error(e);
      process.exit(1);
    });
  }

  // assign role privilege
  const allPrivileges = await PrivilegeDomain.findAll();
  if (allRoles && allPrivileges) {
    await Promise.all(allRoles.map(async (role) => {
      await role.setPrivileges(allPrivileges);
    })).catch((e) => {
      console.error(e);
      process.exit(1);
    });
  }
};

const main = async () => {
  await initialPrivilegeData();
  process.exit();
};

try {
  main();
} catch (e) {
  console.error(e);
  process.exit(1);
}
