import request from 'supertest';
import assert from 'assert';

const testUser = {
  password: 'test',
  phone: '11111111112',
};

describe('loging test', () => {
  it('login request', (done) => {
    request('http://localhost:8040')
      .post('/token')
      .send(testUser)
      .end((err, res) => {
        const { body } = res;
        const { message } = body;
        assert.equal(message, 'welcome to one movie');
        done();
      });
  });
});
