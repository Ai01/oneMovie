import { assert } from 'chai';
import { cloneDeep } from 'lodash';
import supertest from 'supertest';

const url = 'http://localhost:8040';
const testUser = {
  name: 'test',
  password: 'test',
  phone: '12417474889',
  email: 'test@test.com',
};

describe.skip('创建用户', () => {
  it('用户名格式不正确', (done) => {
    const _testUser = cloneDeep(testUser);
    _testUser.name = null;
    supertest(url)
      .post('/user')
      .send({ userInfo: _testUser })
      .expect(400)
      .then((response) => {
        const { body } = response;
        const { error } = body || {};
        assert.deepEqual(error, { code: 400, message: '用户名格式不正确' });
        return done();
      })
      .catch(e => done(e));
  });

  it('密码格式不正确', (done) => {
    const _testUser = cloneDeep(testUser);
    _testUser.password = null;
    supertest(url)
      .post('/user')
      .send({ userInfo: _testUser })
      .expect(400)
      .then((response) => {
        const { body } = response;
        const { error } = body || {};
        assert.deepEqual(error, { code: 400, message: '密码格式不正确' });
        return done();
      })
      .catch(e => done(e));
  });

  it('手机格式不正确', (done) => {
    const _testUser = cloneDeep(testUser);
    _testUser.phone = null;
    supertest(url)
      .post('/user')
      .send({ userInfo: _testUser })
      .expect(400)
      .then((response) => {
        const { body } = response;
        const { error } = body || {};
        assert.deepEqual(error, { code: 400, message: '手机格式不正确' });
        return done();
      })
      .catch(e => done(e));
  });

  it('email格式不正确', (done) => {
    const _testUser = cloneDeep(testUser);
    _testUser.email = null;
    supertest(url)
      .post('/user')
      .send({ userInfo: _testUser })
      .expect(400)
      .then((response) => {
        const { body } = response;
        const { error } = body || {};
        assert.deepEqual(error, { code: 400, message: 'email格式不正确' });
        return done();
      })
      .catch(e => done(e));
  });


  it('正确情况下创建用户', (done) => {
    const _testUser = cloneDeep(testUser);
    supertest(url)
      .post('/user')
      .send({ userInfo: _testUser })
      .expect(200)
      .then((response) => {
        const { body } = response;
        const { user } = body;

        assert.isOk(user);
        delete _testUser.password;
        assert.deepEqual(user, _testUser);
        return done();
      })
      .catch(e => done(e));
  });


  it('手机号已经注册了', (done) => {
    const _testUser = cloneDeep(testUser);
    supertest(url)
      .post('/user')
      .send({ userInfo: _testUser })
      .expect(400)
      .then((response) => {
        const { body } = response;
        const { error } = body || {};
        assert.deepEqual(error, { code: 400, message: '该手机号已经注册了' });
        return done();
      })
      .catch(e => done(e));
  });
});


describe('查找用户', () => {
  it('正常情况下查找用户', (done) => {
    supertest(url)
      .get('/user/1')
      .set('cookie', ['sessionId=eyJ1c2VySWQiOjIsIl9leHBpcmUiOjE1MjIwNTE4MTYxOTYsIl9tYXhBZ2UiOjg2NDAwMDAwfQ==; path=/; httponly;sessionId.sig=Ks7aYUS0z-MeO4kp8qiTVyQpjy8; path=/; httponly'])
      .then((res) => {
        const { body } = res;
        const { user } = body;

        assert.equal(user.id, 1);
        return done();
      })
      .catch(e => done(e));
  });

  it('查找不存在的用户', (done) => {
    supertest(url)
      .get('/user/1000000000')
      .set('cookie', ['sessionId=eyJ1c2VySWQiOjIsIl9leHBpcmUiOjE1MjIwNTE4MTYxOTYsIl9tYXhBZ2UiOjg2NDAwMDAwfQ==; path=/; httponly;sessionId.sig=Ks7aYUS0z-MeO4kp8qiTVyQpjy8; path=/; httponly'])
      .then((res) => {
        const { body } = res;
        const { error } = body;

        assert.equal(error.message, '用户不存在');
        return done();
      })
      .catch(e => done(e));
  });
});

//
// describe('改变用户信息', () => {
//
// });
//
// describe('删除用户', () => {
//
// });
