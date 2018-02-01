import { deleteRoleServer, createRoleServer, updateRoleServer } from 'src/servers';

const deleteRole = async ctx => await deleteRoleServer(ctx);

const createRole = async ctx => await createRoleServer(ctx);

const updateRole = async ctx => await updateRoleServer(ctx);

const roleController = {
  deleteRole,
  createRole,
  updateRole,
};

export default roleController;
