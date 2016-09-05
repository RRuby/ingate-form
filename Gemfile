source 'https://rubygems.org'

ruby '2.2.3'

group :default do
  gem 'airbrake',                      '4.1.0'
  gem 'bootstrap',                     github: 'twbs/bootstrap-rubygem'
  gem 'coffee-rails',                  '~> 4.1.0'
  gem 'dotenv-rails'
  gem 'jquery-rails'
  gem 'pg'
  gem 'rails',                         '~> 4.2.7.1'
  gem 'russian'
  gem 'sassc-rails',                   '~> 1.3.0'
  gem 'simple_form'
  gem 'uglifier',                      '>= 1.3.0'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'spring'
  gem 'sqlite3'
end

group :development do
  gem 'hirb'
  gem 'quiet_assets'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'poltergeist'
  gem 'shoulda-matchers',              require: false
  gem 'simplecov'
end

group :production do
  gem 'puma'
end
