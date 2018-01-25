import {
  UserRoleModel,
  RoleDomain,
  RoleModel,
  UserModel,
  UserDomain,
} from 'src/models';

const Accounts = [
  {
    name: 'a',
    password: 'a',
    phone: '1111111111',
    email: 'a@a.com',
  },
  {
    name: 'b',
    password: 'b',
    phone: '1111111112',
    email: 'b@b.com',
  },
];

const Roles = [
  {
    name: 'a',
    privileges: ['p1', 'p2'],
  },
  {
    name: 'a',
    privileges: ['p3', 'p4'],
  },
];

// 初始化权限数据
const initialPrivilegeData = async () => {
  // table mock
  await UserModel.sync();
  await RoleModel.sync();
  await UserRoleModel.sync();

  // insert data to table
  await Promise.all(Accounts.map(async (i) => {
    await UserDomain.create(i);
  }));

  await Promise.all(Roles.map(async (i) => {
    await RoleDomain.create(i);
  }));

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
