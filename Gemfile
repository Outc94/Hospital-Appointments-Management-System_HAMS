source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
gem 'rails', '~> 6.0.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'

gem 'devise'
gem 'semantic-ui-sass'
gem 'ransack'
gem 'kaminari'
gem 'bcrypt'

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'pry'
  gem 'faker'
  gem "rspec-rails"
  gem 'spring-commands-rspec'
  gem "factory_bot_rails"
  gem "database_cleaner"
  gem "launchy"
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capistrano', '3.6.0' # set of tools for capistrano
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'


end

group :development do
  gem 'letter_opener_web'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'dotenv-rails' # Required to manipulate environment variables in the development environment
gem 'unicorn' # Application server unicorn
gem 'mini_racer', platforms: :ruby # Required at deployment
gem "chartkick"
gem 'groupdate'
#gem 'ed25519'
#gem 'bcrypt_pbkdf'
