import UserDomain from 'src/models/user/userDomain';
import UserModel from 'src/models/user/userModel';

const Accounts = [
  {
    name: 'test',
    password: 'test',
    phone: '1111111111',
    email: 'test@test.com',
  },
  {
    name: 'test1',
    password: 'test2',
    phone: '1111111112',
    email: 'test1@test1.com',
  },
];

const initialData = async () => {
  // user data mock
  await UserModel.sync();
  await Promise.all(Accounts.map(async (i) => {
    await UserDomain.create(i);
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
