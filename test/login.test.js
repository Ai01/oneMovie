import request from 'supertest';
import assert from 'assert';

const testUser = {
  phone: '11111111112',
  password: 'test',
};

describe('loging test', () => {
  // it('缺少密码', (done) => {
  //
  // });
  //
  // it('缺少手机号', (done) => {
  //
  // });
  //
  // it('密码格式不正确', (done) => {
  //
  // });
  //
  // it('手机号格式不正确', (done) => {
  //
  // });

  it('正确情况下登录', (done) => {
    request('http://localhost:8040')
      .post('/token')
      .send(testUser)
      .expect(200)
      .end((err, res) => {
        if (err) {
          return done(err);
        }
        const { body } = res;
        const { message } = body;
        assert.equal(message, 'welcome to one movie');
        return done();
      });
  });
});
