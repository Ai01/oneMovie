import amqp from 'amqplib/callback_api';

const validateMessage = (msgData) => {
  if (!msgData || typeof msgData !== 'object') {
    return false;
  }

  const { content, sendMailTo } = msgData;
  // TODO:bai check sendMailTo param format
  if (content && sendMailTo) {
    return true;
  }

  return false;
};

const sendMail = (msg) => {
  if (!validateMessage(msg)) {
    return;
  }

  amqp.connect('amqp://localhost:5672', (err, conn) => {
    if (err) {
      console.log(err);
      return null;
    }

    conn.createChannel((chErr, ch) => {
      if (chErr) {
        console.log(chErr);
        return null;
      }

      const q = 'mail_queue';
      const binaryMessage = Buffer.from(JSON.stringify(msg));

      ch.assertQueue(q, { durable: true });
      ch.sendToQueue(q, binaryMessage, { persistent: true });

      console.log(`send message ${msg} success`);
      setTimeout(() => {
        conn.close();
      }, 500);
    });
  });
};

export default sendMail;
