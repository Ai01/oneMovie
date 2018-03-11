// 接收queue中的邮件，并发送
const amqp = require('amqplib/callback_api');
const nodemailer = require('nodemailer');

const transport = nodemailer.createTransport({
  host: 'smtp.qq.com',
  port: 465,
  debug: true,
  secure: true,
  secureConnection: true,
  auth: {
    user: '2911403289@qq.com',
    pass: 'zshdajzdldmtdgfg', // qq邮箱授权码，不是密码
  },
});

amqp.connect('amqp://localhost:5672', (err, conn) => {
  if (err) {
    console.log('connect rabbitMQ error:', err);
    return null;
  }

  conn.createChannel((chErr, ch) => {
    if (chErr) {
      console.log('rabbitMQ create channel error:', chErr);
    }

    const q = 'mail_queue';

    ch.assertQueue(q, { durable: true });
    ch.prefetch(1);
    ch.consume(
      q,
      (msgData) => {
        if (!msgData) {
          return;
        }
        const _msgData = JSON.parse(msgData.content.toString());

        const { content, sendMailTo } = _msgData;
        const mailOption = {
          from: '2911403289@qq.com',
          to: sendMailTo, // TODO:bai need to check the mail address format
          text: content.toString(),
          subject: 'oneMovie',
        };

        // 发送邮件
        transport.sendMail(mailOption, (mErr, info) => {
          if (mErr) {
            console.log('transport mail error:', mErr.stack);
            return ch.nack(msgData);
          }
          console.log('delivered message %s', info.messageId);
          ch.ack(msgData);
        });
      },
      { noAck: false },
    );
  });
});
