import UserDomain from 'src/models/user/userDomain';
import UserModel from 'src/models/user/userModel';

const testAccount = {
  name: 'test',
  password: 'test',
  phone: '1111111111',
  email: 'test@test.com',
};

const initialData = async () => {
  // user data mock
  await UserModel.sync();
  await UserDomain.create(testAccount);
};

try {
  initialData();
  process.exit();
} catch (e) {
  console.error(e);
}
