import { assert } from 'chai';
import supertest from 'supertest';

const url = 'http://localhost:8040';

const testUser = {
  name: 'test',
  password: 'test',
  phone: '11117114889',
  email: 'test@test.com',
};

describe('create user', () => {
  it('should return user object', () => supertest(url)
    .post('/user')
    .send({ userInfo: testUser })
    .expect(200)
    .then((response) => {
      const { body } = response;
      const { user } = body;

      assert.isOk(user);
      delete testUser.password;
      console.log(user, testUser);
      assert.deepEqual(user, testUser);
    }));
});
