source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'pg', '~> 1.1'

gem 'puma', '~> 5.0'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'faker'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 5.0', '>= 5.0.2'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'rubocop', '~> 1.22', require: false
  gem 'rubocop-rspec', '~> 2.5', require: false
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'rack-cors'

# A plugin for versioning Rails based RESTful APIs.
gem 'versionist', '~> 2.0', '>= 2.0.1'

# Kaminari is a Scope & Engine based, clean, powerful, 
# agnostic, customizable and sophisticated paginator for Rails 4+
gem 'kaminari', '~> 1.2', '>= 1.2.1'

# Centralization of locale data collection for Ruby on Rails.
gem 'rails-i18n', '~> 6.0.0' # For 6.0.0 or higher

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
