import request from 'supertest';
import assert from 'assert';

const testUser = {
  phone: '11111111112',
  password: 'test',
};

describe('loging test', () => {
  it('login request', (done) => {
    request('http://localhost:8040')
      .post('/token')
      .set('Cookie', ['sessionId=eyJ1c2VySWQiOjIsIl9leHBpcmUiOjE1MjE3MTY2MjI4NDgsIl9tYXhBZ2UiOjg2NDAwMDAwfQ==;sessionId.sig=3RSiHeKA0_JPJfmGb7qS2ReGDCU'])
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
