source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'


group :production do
	# Use Postgres for production environment (As Heroku only supports this)
  gem 'pg'
  gem 'rails_12factor'
end


group :development do
	# Use sqlite3 for development environment
  gem 'sqlite3'
end

group :development, :test do
	# Use RSpec for testing
  gem 'rspec-rails', '~> 3.0'
  gem 'shoulda'
end

gem 'faker'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Bootstrap for css framework
gem 'bootstrap-sass'
# Used for encrypting User passwords
gem 'bcrypt'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

