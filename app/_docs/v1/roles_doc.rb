class RolesError < V1Error
  include CUDFailed, AuthFailed
end

class Api::V1::RolesDoc < ApiDoc
  api :index, 'GET roles list of the specified model', builder: :index, use: token do
    query :model, String, dft: 'User', reg: /^[A-Z]/
  end


  api :show, 'GET the specified role.', builder: :show, use: id_and_token


  api :create, 'POST create a role', builder: :success_or_not, use: token do
    form! 'for creating the specified role', data: {
            :name! => { type: String, desc: 'name of role' },
        :condition => { type: String, dft: 'true', desc: '暂不必传' },
          :remarks => String
    }
  end

  api :destroy, 'DELETE the specified role.', builder: :success_or_not, use: id_and_token

  # /roles/:id/permissions
  api :permissions, 'GET permissions of specified role', use: token do
    path! :id, Integer, desc: '要查询的 role id'
  end


  # /roles/:id/permissions/modify
  api :permissions_modify, 'POST modify permissions to the specified role and then save to db',
           builder: :success_or_not, use: token do
    path! :id, Integer, desc: 'role id'
    form! 'for modifying permissions to the specified role', data: {
        :permission_ids! => { type: Array[{ type: Integer, range: { ge: 1 } }], size: 'ge_1' }
    }
  end
end
