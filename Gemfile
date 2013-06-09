source 'https://rubygems.org'

ruby '2.0.0'

group :assets do
  gem 'libv8', '~> 3.11.8'
  gem 'therubyracer'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'rails', '3.2.13'
gem 'less-rails'
gem 'acts-as-taggable-on', '~> 2.2.2' #https://github.com/mbleigh/acts-as-taggable-on
gem 'acts_as_votable' # https://github.com/ryanto/acts_as_votable
gem 'devise' # https://github.com/plataformatec/devise
gem 'haml'
gem 'imgur'
gem 'jquery-rails'
gem 'zclip-rails'
gem 'newrelic_rpm' # https://devcenter.heroku.com/articles/newrelic#addon_installations
                                      # https://newrelic.com/docs/ruby/new-relic-for-ruby
gem 'twitter-bootstrap-rails'

group :production do
  gem 'pg'
  gem 'unicorn'
end

group :development do
  gem 'thin'
  gem 'pry-rails'
  gem 'capistrano'
  gem 'guard-livereload'
  gem 'yajl-ruby' #Just to make livereload perform better
end

group :development, :test do
  gem 'sqlite3'
  gem 'simplecov'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_girl'
  gem 'factory_girl_rails'
  gem 'jasminerice'
  gem 'rb-fsevent'
  gem 'guard-jasmine'
end

group :test do
  gem 'mocha', require: false
end
