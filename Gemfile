source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# gem 'redis', '~> 3.0'
gem 'devise'
gem 'dotenv-rails'
gem 'mysql2', '< 0.5'
gem 'rollbar'

group :development, :test do
  # Use RSpec for specs
  gem 'rspec-rails'
  # Use Should Matchers for testing helpers
  gem 'shoulda-matchers'
  # Use Factory Bot for generating random test data
  gem 'factory_bot_rails'
  # Use Faker to generate fake data for tests
  gem 'faker'
  # Database cleaner to clear database after you run rspec
  gem 'database_cleaner'
  # Debugger for Ruby
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
end

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap'
  gem 'rails-assets-jquery'
  gem 'rails-assets-tether'
end
