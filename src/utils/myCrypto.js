import crypto from 'crypto';

const sha256Hash = (input) => {
  const hash = crypto.createHash('sha256');
  hash.update(input);
  return hash.digest('base64');
};

export default sha256Hash;

