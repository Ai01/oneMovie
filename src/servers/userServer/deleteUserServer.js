import { UserDomain } from 'src/domains';

const deleteUserServer = async (ctx) => {
  const { id: userId } = ctx.params;
  // TODO:bai user判断
  await UserDomain.destroy({
    where: {
      id: userId,
    },
  }).then(() => {
    ctx.body = {
      message: '删除成功',
    };
  });
};

export default deleteUserServer;
