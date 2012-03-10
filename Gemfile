source 'https://rubygems.org'

gem 'rails', '3.2.1'
gem 'jquery-rails'
gem 'acts_as_votable' # https://github.com/ryanto/acts_as_votable
gem 'devise' # https://github.com/plataformatec/devise

group :production do
  gem 'pg'
  gem 'mysql2'
  gem 'thin'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'heroku'
  gem 'capistrano'
end

group :development, :test do
  gem 'sqlite3'
end

group :test do
  gem 'test-unit'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
