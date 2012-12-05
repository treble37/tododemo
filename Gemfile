source 'https://rubygems.org'

gem 'rails', '~>3.2.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'execjs'
gem 'libv8', '~> 3.11.8'
gem 'therubyracer' #needed for rspec install

group :test, :development do
  gem 'annotate', '~> 2.4.1.beta' 
  gem 'faker','~>1.0.1'
  #Added 2/14/12 Tues for debugging
  gem "linecache19", "0.5.13"
  gem "ruby-debug-base19", "0.11.26"
  gem "ruby-debug19", require: 'ruby-debug'
end
group :test do
  gem 'rspec-rails', '>= 2.6.1'
  gem 'capybara', '~>1.1.2' #used in Rails 3.2.1 tutorial
  gem 'autotest'
  gem 'autotest-rails-pure'
  gem 'factory_girl_rails', '~>1.6.0' #higher version than in Rails tutorial
  gem 'guard-rspec'
  gem 'guard-spork', '~>0.5.2' #higher version than in Rails tutorial
  gem 'spork', '~>0.9.0'
  
  #Linux system dependent gems for use with guard, Rails 3.2 tutorial
  gem 'rb-inotify', '0.8.8'
  gem 'libnotify', '0.5.9'
  gem 'cucumber-rails', '1.2.1'
  gem 'database_cleaner', '0.7.0'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
