source 'https://gems.ruby-china.com'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.7.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false


# === Databases ===

# Use mysql as the database for Active Record
# gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.2.0'
# https://github.com/devmynd/jsonb_accessor
# gem 'jsonb_accessor', '~> 1.0.0'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.2'
# https://github.com/redis-store/redis-rails
gem 'redis-rails', '>= 5.0.2'

# https://github.com/paper-trail-gem/paper_trail
# gem 'paper_trail'


# === Search & Query Extension ===

# Pagination, https://github.com/kaminari/kaminari
gem 'kaminari'

# By_* Lets you find ActiveRecord + Mongoid objects by year, month, fortnight, week and more!
# https://github.com/radar/by_star
# gem 'by_star', github: 'radar/by_star'

# Intelligent search made easy with Rails and Elasticsearch
# https://github.com/ankane/searchkick
# gem 'searchkick'
# https://github.com/typhoeus/typhoeus
# gem 'typhoeus'

# https://github.com/rails/arel
# Rails integrates it by default
# https://github.com/activerecord-hackery/ransack, Object-based searching.
# gem 'ransack', github: 'activerecord-hackery/ransack'

# write-through and read-through caching
# https://github.com/hooopo/second_level_cache/
# gem 'second_level_cache', '~> 2.3.0'

# https://github.com/norman/friendly_id
# gem 'friendly_id', '~> 5.1.0'

# Soft Delete, https://github.com/ActsAsParanoid/acts_as_paranoid
gem 'acts_as_paranoid', '~> 0.7.0'

# https://github.com/ClosureTree/closure_tree
# Easily and efficiently make your ActiveRecord models support hierarchies
# gem 'closure_tree'
# https://github.com/amerine/acts_as_tree
# gem 'acts_as_tree', '~> 2.7'


# === Zero ===

# gem 'zero-rails_openapi'
gem 'zero-rails_openapi', github: 'zhandao/zero-rails_openapi'
# gem 'zero-rails_openapi', path: '~/ws/zero-rails_openapi'
# gem 'zero-params_processor'
gem 'zero-params_processor', github: 'zhandao/zero-params_processor'
# gem 'zero-params_processor', path: '~/ws/zero-params_processor'

gem 'i_am_i_can', path: '~/ws/ikkiuchi/i_am_i_can'

# Business Error Management by using OOP
# https://github.com/zhandao/business_error
gem 'business_error'
# gem 'business_error', path: '~/ws/business_error'

# Render JSON response in a unified format
# https://github.com/zhandao/out_put
gem 'out_put'
# gem 'out_put', path: '~/ws/out_put'

# === App Server ===
# https://github.com/puma/puma
gem 'puma'


# === Ruby Extension ===
# https://github.com/intridea/multi_json/
gem 'multi_json'
# https://github.com/ohler55/oj
gem 'oj'


# === Monitor ===

# Ruby Client for Sentry, https://github.com/getsentry/raven-ruby
gem 'sentry-raven'


# === View ===
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# https://devblast.com/b/jbuilder
gem 'jbuilder'
# https://github.com/ikkiuchi/active_serialize
# Provide a very simple way to transform ActiveRecord data into Hash
gem 'active_serialize', '>= 2.5.2'

# https://github.com/rails-api/active_model_serializers/
# gem 'active_model_serializers'


# === Auth & Security ===

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# simple encryption storage
# https://github.com/zhandao/secure_storage
# gem 'secure_storage', path: '~/ws/secure_storage'
gem 'secure_storage', github: 'zhandao/secure_storage'

# Generates attr_accessors that encrypt and decrypt attributes
# https://github.com/attr-encrypted/attr_encrypted
# gem 'attr_encrypted', '~> 3.1.0'

# ruby-JWT, https://github.com/jwt/ruby-jwt
gem 'jwt'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# https://github.com/elabs/pundit/
## gem "pundit"
# https://github.com/CanCanCommunity/cancancan
## gem 'cancancan', '~> 2.0'

# Easiest way to add multi-environment yaml settings to Rails
# https://github.com/railsconfig/config
gem 'config'

# blocking & throttling, https://github.com/kickstarter/rack-attack
gem 'rack-attack'

# Abort requests that are taking too long, https://github.com/heroku/rack-timeout
gem 'rack-timeout', require: 'rack/timeout/base'

# Exception Notifier, https://github.com/smartinez87/exception_notification
# gem 'exception_notification'


# === Asynchronous Task ===

# https://github.com/mperham/sidekiq
# https://github.com/mperham/sidekiq/wiki/Active-Job
gem 'sidekiq'

# provides a clear syntax for writing and deploying cron jobs, https://github.com/javan/whenever
gem 'whenever', require: false


# === Log ===

# An attempt to tame Rails' default policy to log everything.
# https://github.com/roidrage/lograge
gem 'lograge', '>= 0.11.2'
# https://github.com/shadabahmed/logstasher/
gem 'logstasher'
# https://github.com/dwbutler/logstash-logger/
# gem 'logstash-logger'


# === Administration Framework ===

# https://activeadmin.info/documentation.html
# https://github.com/activeadmin/activeadmin
gem 'activeadmin', '>= 2.8.0' #, github: 'activeadmin/activeadmin'#, branch: '1-1-stable'
# UI for ActiveAdmin, https://github.com/cle61/arctic_admin
gem 'arctic_admin', '>= 3.2.0' #, github: 'cle61/arctic_admin'#, branch: '2-0-alpha'
# UI for ActiveAdmin, https://github.com/vigetlabs/active_material
# gem "active_material", github: "vigetlabs/active_material"
gem 'coffee-rails', '>= 5.0.0'

# https://github.com/sferik/rails_admin
# gem 'rails_admin', '~> 1.2'

# https://github.com/igorkasyanchuk/rails_db
# Rails Database Viewer and SQL Query Runner
# gem 'rails_db', group: :development


# === Application ===

# Office Open XML Spreadsheet Generation, https://github.com/randym/axlsx
# gem 'axlsx'
# gem 'axlsx_rails'

# ActiveStorage services' adapters
# https://github.com/aws/aws-sdk-ruby
# gem 'aws-sdk-s3', require: false
# https://github.com/huacnlee/activestorage-aliyun
# gem 'activestorage-aliyun'

# https://github.com/zhandao/sms
# gem 'smart_sms', path: '~/ws/sms'
# gem 'smart_sms', github: 'zhandao/sms'

# Settings management for application
# https://github.com/huacnlee/rails-settings-cached
# gem "rails-settings-cached"
# UI interface for `rails-settings-cached in` `activeadmin`
# https://github.com/artofhuman/activeadmin_settings_cached
# gem 'activeadmin_settings_cached'
# Another User interface for manage settings, https://github.com/accessd/rails-settings-ui
# gem 'rails-settings-ui'


# === Abstract ===

# https://github.com/aasm/aasm
# AASM - State machines for Ruby classes (plain Ruby, ActiveRecord, Mongoid)
# gem 'aasm'

# https://github.com/AaronLasseigne/active_interaction
# Manage application specific business logic.
# gem 'active_interaction', '~> 3.5'
#
# https://github.com/collectiveidea/interactor
# Interactor provides a common interface for performing complex user interactions.
# gem "interactor", "~> 3.0"
# https://github.com/adomokos/light-service
# Series of Actions with an emphasis on simplicity.
# gem 'light-service'
# https://github.com/dry-rb/dry-transaction, Business transaction DSL
# gem 'dry-transaction'
# https://github.com/cypriss/mutations
# Compose your business logic into commands that sanitize and validate input.
# gem 'mutations'
#
# https://github.com/krisleech/wisper
# A micro library providing Ruby objects with Publish-Subscribe capabilities
# gem 'wisper', '2.0.0'


group :development do
  # https://github.com/ikkiuchi/generators
  gem 'generators', github: 'ikkiuchi/generators'
  # gem 'generators', path: '~/ws/generators'

  # http://nadarei.co/mina/
  gem 'mina', require: false
  # https://github.com/untitledkingdom/mina-puma
  gem 'mina-puma', require: false
  # Plugin for Mina that adds support for multiple stages.
  # https://github.com/endoze/mina-multistage
  gem 'mina-multistage', require: false
  # https://github.com/Mic92/mina-sidekiq/
  gem 'mina-sidekiq', require: false

  # https://github.com/capistrano/capistrano
  # gem "capistrano", "~> 3.10"

  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'
  # https://github.com/jonleighton/spring-watcher-listen
  gem 'spring-watcher-listen'
  # https://github.com/guard/listen
  gem 'listen'

  # https://github.com/yuki24/did_you_mean
  gem 'did_you_mean', require: false

  # https://github.com/charliesome/better_errors
  gem 'better_errors'
  # https://github.com/banister/binding_of_caller
  gem 'binding_of_caller'

  ### Security and Code Quality tools
  # an open source static analysis tool which checks Ruby on Rails applications for security vulnerabilities.
  # https://github.com/presidentbeef/brakeman
  gem 'brakeman', require: false # or just `gem install`

  # The raising security scanner for ruby web applications
  # https://github.com/thesp0nge/dawnscanner
  # gem 'dawnscanner', require: false # or just `gem install`

  # https://github.com/bbatsov/rubocop
  gem 'rubocop', require: false # or just `gem install`
  # https://github.com/toshimaru/rubocop-rails
  # gem "rubocop-rails_config", require: false # or just `gem install`

  # https://github.com/rubysec/bundler-audit
  gem 'bundler-audit', require: false # or just `gem install`

  # A Ruby code quality reporter, https://github.com/whitesmith/rubycritic
  # https://ruby-china.org/topics/30746
  gem 'rubycritic', require: false # or just `gem install`

  # Colorized logging for Memcached and Redis
  # https://github.com/ankane/cacheflow
  gem 'cacheflow'

  # Annotate Rails classes with schema and routes info
  # https://github.com/ctran/annotate_models
  gem 'annotate' # 1000000 :+1
end

# console beautifying settings
# https://github.com/ascendbruce/awesome_rails_console
# http://toyroom.bruceli.net/tw/2014/08/13/awesome-rails-console-customization-using-pry.html
# http://toyroom.bruceli.net/tw/2014/06/14/using-irbrc-to-serve-frequent-used-commands-in-rails-console.html
gem 'awesome_rails_console', '>= 0.4.4'
# Please clean up duplicated gems if any.
# Feel free to remove gems that you don't want to use or if they conflict with other gem dependencies. (you might need to update .pryrc also)
group :development, :test do
  # -- awesome_rails_console
  # https://github.com/cldwalker/hirb TODO 3 years ago # https://github.com/janlelis/irbtools
  gem 'hirb'
  # Unused, see: https://github.com/miaout17/hirb-unicode/pull/5
  ## gem 'hirb-unicode'
  # Instead of steakknife/hirb-unicode: https://github.com/steakknife/hirb-unicode
  gem 'hirb-unicode-steakknife', require: 'hirb-unicode'
  gem 'pry'
  # https://github.com/deivid-rodriguez/pry-byebug
  gem 'pry-byebug'
  # https://github.com/pry/pry-stack_explorer
  gem 'pry-stack_explorer'
  # -- awesome_rails_console
end

group :test do
  # https://github.com/philostler/rspec-sidekiq/
  gem 'rspec-sidekiq'
  # TODO
  # gem 'faker'
  # gem 'capybara'
  # https://github.com/DatabaseCleaner/database_cleaner/
  gem 'database_cleaner'
  # gem 'selenium-webdriver'
  # gem 'shoulda-matchers'

  # Code coverage for Ruby 1.9+ with a powerful configuration library and automatic merging of coverage across test suites
  # https://github.com/colszowka/simplecov
  gem 'simplecov', :require => false

  # https://github.com/rspec/rspec-rails
  # http://www.betterspecs.org/
  # https://relishapp.com/rspec/rspec-core/v/3-7
  # https://relishapp.com/rspec/rspec-rails/v/3-7
  # https://ruby-china.org/topics/9271
  # https://github.com/rspec/rspec-expectations
  gem 'rspec-rails', '>= 4.0.1'
  # http://www.rubydoc.info/gems/factory_bot/file/GETTING_STARTED.md
  # https://github.com/thoughtbot/factory_bot_rails
  gem 'factory_bot_rails', '>= 6.1.0'

  # https://github.com/grosser/parallel_tests
  # https://makandracards.com/makandra/1241-how-to-employ-and-run-your-tests-with-parallel_tests-to-speed-up-test-execution
  gem 'parallel_tests' # TODO
end

group :production, :staging do
  # https://github.com/newrelic/rpm
  # https://newrelic.com
  gem 'newrelic_rpm'
end
