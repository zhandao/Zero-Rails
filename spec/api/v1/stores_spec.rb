require 'rails_helper'
require 'dssl/request'

RSpec.describe 'API V1', 'stores', type: :request do
  happy_spec
  path id: 1

  let(:user) { create(:user) }
  before { user }

  api :index, :get, '/api/v1/stores', 'get list of stores' do
    let(:params) { { page: 'integer', rows: 'integer' } }
  end

  api :create, :post, '/api/v1/stores', 'post create a store', :token_needed do
    let(:params) { { name: 'string', address: 'string' } }
  end

  api :show, :get, '/api/v1/stores/{id}', 'get a store' do
  end

  api :update, :patch, '/api/v1/stores/{id}', 'update the specified store', :token_needed do
    let(:params) { { name: 'integer', address: 'string' } }
  end

  api :destroy, :delete, '/api/v1/stores/{id}', 'delete the specified store', :token_needed do
  end
end
