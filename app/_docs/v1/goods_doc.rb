class Api::V1::GoodsDoc < ApiDoc
  api :index, 'GET list of goods.', builder: :index,
           use: token + %i[ created_start_at created_end_at value page rows ] do
    desc 'GET list of goods.', view!: '请求来自的视图，允许值：', search_type!: '搜索的字段名，允许值：'

    query :view, String, enum!: {
        '所有物品 (default)': 'all',
                  '上线物品': 'online',
                  '下线物品': 'offline'
    }, dft: 'all'

    do_query by: {
        :search_type => { type: String, enum: %w[ name category_name unit price ], as: :field },
             :export => { type: Boolean, desc: '是否将查询结果导出 Excel 文件', examples: {
                 :right_input => true,
                 :wrong_input => 'wrong input'
             }}
    }

    order 'Token', :view, :search_type, :value, :created_start_at, :created_end_at, :page, :rows, :export

    examples :all, {
        :right_input => param_order,
        :wrong_input => [ ]
    }
  end


  api :create, 'POST create a good.', builder: :success_or_not, use: token do
    form! data: {
               :name! => { type: String,  desc: '名字' },
        :category_id! => { type: Integer, desc: '子类 id', npmt: true, range: { ge: 1 }, as: :cate },
               :unit! => { type: String,  desc: '单位' },
              :price! => { type: Float,   desc: '单价', range: { ge: 0} },
        # -- optional
             :on_sale => { type: Boolean, desc: '是否上线?' },
             :remarks => { type: String,  desc: '其他说明' },
             :picture => { type: String,  desc: '图片路径', is: :url }
    },
          exp_by:       %i[ name category_id unit price ],
          examples: {
              :right_input => [ 'good1', 6, 'unit', 5.7 ],
              :wrong_input => [ 'good2', 0, 'unit', -1  ]
          }
  end


  api :show, 'GET the specified good.', builder: :show, use: token + id


  api :update, 'PATCH|PUT update the specified Good.', builder: :success_or_not, use: token + id do
    form! data: {
               :name => { type: String,  desc: '名字' },
        :category_id => { type: Integer, desc: '子类 id', npmt: true, range: { ge: 1 }, as: :cate },
               :unit => { type: String,  desc: '单位' },
              :price => { type: Float,   desc: '单价', range: { ge: 0 } },
            :remarks => { type: String,  desc: '其他说明' },
            :picture => { type: String,  desc: '图片路径', is: :url },
            :on_sale => { type: Boolean, desc: '是否上线' }
    }
  end


  api :destroy, 'DELETE the specified good.', builder: :success_or_not, use: token + id


  # /goods/:id/change_onsale
  api :change_onsale, 'POST change online status of the specified good.', builder: :success_or_not, use: token do
    path! :id, Integer, desc: '要上/下线的物品 id'
  end
end
