source 'https://rubygems.org'

gem 'rails', '~>3.2.9'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2'
  gem 'bootstrap-sass', '~> 2.3.2.0'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'execjs'
gem 'libv8', '~> 3.11.8'
gem 'therubyracer' #needed for rspec install
gem 'devise', '~> 2.1.2'

group :test, :development do
  gem 'annotate', '~> 2.4.1.beta' 
  gem 'faker','~>1.0.1'
  
  gem 'rspec-rails', '>= 2.6.1'
  gem 'autotest'
  gem 'autotest-rails-pure'
  gem 'factory_girl_rails', '~>1.6.0' #higher version than in Rails tutorial
  gem 'guard-rspec', '~>2.3.0'
  gem 'guard-spork', '~>1.2.0' #higher version than in Rails tutorial
  gem 'spork', '~>0.9.2'
  
  gem "debugger", "~> 1.6.0"
end
group :test do
  gem 'capybara', '~>1.1.2' #used in Rails 3.2.1 tutorial
  
  #Linux system dependent gems for use with guard, Rails 3.2 tutorial
  gem 'rb-inotify', '0.8.8'
  gem 'libnotify', '0.5.9'
  gem 'cucumber-rails', '1.2.1', :require=>false
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
