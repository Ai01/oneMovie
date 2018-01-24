import UserDomain from 'src/models/user/userDomain';
import UserModel from 'src/models/user/userModel';
import RoleModel from 'src/models/role/roleModel';
import RoleDomain from 'src/models/role/roleDomain';

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

const initialData = async () => {
  // table mock
  await UserModel.sync();
  await RoleModel.sync();

  // insert data to table
  await Promise.all(Accounts.map(async (i) => {
    await UserDomain.create(i);
  }));

  await Promise.all(Roles.map(async (i) => {
    await RoleDomain.create(i);
  }));
};

const main = async () => {
  await initialData();
  process.exit();
};

try {
  main();
} catch (e) {
  console.error(e);
}
