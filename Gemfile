# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootsnap'
gem 'coffee-rails', '~> 4.2'
gem 'haml-rails'
gem 'jbuilder', '~> 2.5'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'pundit'
gem 'rails', '~> 5.1.5'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker', '~> 3.2'

group :staging, :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.13'

  gem 'foreman'

  # Use Pry instead of IRB
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'

  gem 'rspec-rails'
  gem 'ruby_audit', require: false
  gem 'selenium-webdriver'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'figaro'
  gem 'letter_opener'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'

  # Deployment

  gem 'mina', require: false
  gem 'mina-multistage', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'timecop'
  gem 'webmock'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
