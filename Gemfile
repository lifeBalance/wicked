source 'https://rubygems.org'

# Latest stable Rails version
gem 'rails', '4.2.5'

# Last version(0.4.0) of 'rails-api' before being merged into Rails
gem 'rails-api'

# Latest AMS
gem 'active_model_serializers', github: "rails-api/active_model_serializers"

# In Rails 4.2.*, class-level such as `respond_to` have been moved to the responders gem.
gem 'responders', '2.1.0' # A set of Rails responders to dry up your application

# Using MySQL as a db
gem 'mysql2', '0.4.1'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '0.4.1'
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '1.4.0'
end

group :test do
  # Putting some color in minitest output
  gem 'minitest-reporters'
end
