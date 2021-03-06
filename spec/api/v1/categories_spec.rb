require 'rails_helper'
require 'dssl/request'

RSpec.describe 'API V1', 'categories', type: :request do
  happy_spec
  path id: 1

  let(:user) { create(:user) }
  before { user }


  let(:create_params) { { name: 'sub', base_category_id: 1 } }

  api :create, :post, '/api/v1/categories', 'post create a category', :token_needed do
    let(:params) { create_params }
  end

  api :update, :patch, '/api/v1/categories/{id}', 'PATCH|PUT update the specified category', :token_needed do
    let(:params) { { name: 'string', base_category_id: 'integer' } }
  end

  api :destroy, :delete, '/api/v1/categories/{id}', 'delete the specified category', :token_needed do
  end

  describe 'index' do
    before_when :with_create do
      req_to! :create, with: { name: 'base1', base_category_id: nil }
      req_to! :create, with: { name: 'base2', base_category_id: nil }
      req_to! :create, with: { name: 'sub11' }
      req_to! :create, with: { name: 'sub12' }
    end

    api :index, :get, '/api/v1/categories', 'get list of categories.' do
      let(:params) { { page: 'integer', rows: 'integer' } }
    end

    api :nested_list, :get, '/api/v1/categories/list', 'get nested list of categories.' do
      it 'works', :with_create do
        requests have_size: 2
        expect(data[0][:sub_categories_info]).to have_size 2
        expect(data[1][:sub_categories_info]).to have_size 0
      end
    end
  end
end
