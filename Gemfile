source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'
gem 'rails', '~> 6.0'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'duktape'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'tzinfo-data'
gem 'devise'
gem 'annotate'
gem 'hirb'
gem 'hirb-unicode'
gem "webpacker"
gem 'bootstrap', '~> 4.1.1'
gem 'jquery-rails'
gem 'devise-i18n'
gem 'devise-i18n-views'
gem 'kaminari'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug'
  gem 'sqlite3'
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
end

group :production, :staging do
  gem 'unicorn'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'letter_opener_web'
end

group :test do
  gem 'capybara', '>= 2.15'
end
