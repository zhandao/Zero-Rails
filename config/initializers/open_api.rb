require 'open_api'

# More Information: https://github.com/zhandao/zero-rails_openapi/blob/master/documentation/examples/open_api.rb
OpenApi::Config.class_eval do
  open_api Keys.app_name, base_doc_classes: [ApiDoc]
  info version: '0.0.1', title: 'Zero Rails APIs', description: 'API documentation of Zero-Rails Application.'
  server 'http://localhost:3000', desc: 'Main (production) server'
  server 'http://localhost:3000', desc: 'Internal staging server for testing'
  bearer_auth :Authorization

  self.file_output_path = 'app/_docs/open_api'

  # self.doc_location = ['./app/_docs/v*/v1*', './app/_docs/v*/*']

  self.rails_routes_file = 'config/routes.txt'

  self.default_run_dry = true
end
