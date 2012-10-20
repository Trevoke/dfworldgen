source :rubygems

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end


gem 'acts-as-taggable-on', '~> 2.2.2' #https://github.com/mbleigh/acts-as-taggable-on
gem 'acts_as_votable' # https://github.com/ryanto/acts_as_votable
gem 'devise' # https://github.com/plataformatec/devise
gem 'haml'
gem 'imgur'
gem 'jquery-rails'
gem 'newrelic_rpm' # https://devcenter.heroku.com/articles/newrelic#addon_installations
                                      # https://newrelic.com/docs/ruby/new-relic-for-ruby
gem 'rails', '3.2.1'
gem 'rails-asset-jqueryui', '~> 0.0.3'
gem 'twitter-bootstrap-rails'
                                      #gem 'crack' # should be auto-required, should it not?
                      #gem 'curb' # should be auto-required, should it not?
group :production do
  gem 'pg'
  gem 'unicorn'
end

group :development do
  gem 'pry-rails'
  gem 'heroku'
  gem 'capistrano'
  gem 'guard-livereload'
  gem 'yajl-ruby' #Just to make livereload perform better
end

group :development, :test do
  gem 'sqlite3'
  gem 'simplecov'
  gem 'mocha', require: 'mocha_standalone'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_girl'
  gem 'factory_girl_rails'
  gem 'jasminerice'
  gem 'guard-jasmine'
end

group :test do

end
