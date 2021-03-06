import { UserDomain } from 'src/domains';
import seqeulize from 'src/models/sequelize';

const updateUserServer = async (ctx) => {
  const { request, params } = ctx;
  const { id: userId } = params;
  const { body } = request;
  const { userInfo } = body;

  // 如果userInfo中里面有roleIds。那么需要调用addRoles

  const oldUserInstance = await UserDomain.findById(userId);

  if (!oldUserInstance) {
    ctx.throw(400, '用户不存在');
  }

  const { roleIds, ...rest } = userInfo;
  let newUserInstance;
  if (roleIds && Array.isArray(roleIds) && roleIds.length) {
    const transaction = await seqeulize.transaction();
    try {
      await UserDomain.updateUser({
        ...rest,
        userId,
      }, {
        transaction,
      });

      newUserInstance = await UserDomain.findById(userId, {
        transaction,
      });


      // 重新set
      await newUserInstance.setRoles(roleIds, {
        transaction,
      });

      await transaction.commit();
    } catch (e) {
      console.log(e);
      transaction.rollback();
    }
  } else {
    newUserInstance = await UserDomain.updateUser({
      ...rest,
      userId,
    });
  }


  if (newUserInstance) {
    ctx.body = {
      user: newUserInstance,
    };
  } else {
    ctx.throw(500, '更新用户失败, 发生未知错误');
  }
};

export default updateUserServer;
