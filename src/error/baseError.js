const errorFactory = (message, code) => {
  const e = new Error(message);
  e.code = code;
  e.status = code;
  return e;
};

export default errorFactory;
