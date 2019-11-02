source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# adding back jQuery
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# learnshortcuts gems:
gem 'sassc', '~> 1.1'
gem 'uglifier', '>= 1.3.0'
gem 'annotate', '~> 2.7.4', '>= 2.7.2'
gem 'browser', '~> 2.5.3'
gem 'devise', '~> 4.7'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'
gem 'mandrill-api', '~> 1.0', '>= 1.0.53'
gem 'mandrill_mailer', '~> 1.4'
gem 'seed_dump', '~> 3.3', '>= 3.3.1'
gem 'stripe', '~> 3.30'
gem 'stripe_event', '~> 2.1', '>= 2.1.1'
gem 'high_voltage', '~> 3.1'
# charts
gem 'chartkick', '~> 3.0', '>= 3.0.1'
gem 'highcharts-rails', '~> 6.0', '>= 6.0.3'
gem 'groupdate', '~> 4.0.1'
gem 'business_time', '~> 0.9.3'
gem 'to_words', '~> 1.1', '>= 1.1.1'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


# rspec
group :development, :test do
  gem 'rspec-rails', '~> 3.6.0'
  gem 'spring-commands-rspec'
  gem 'factory_bot'
end

group :test do
  gem 'faker'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
end