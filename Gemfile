source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.3"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Ruby on Rails unobtrusive scripting adapter
gem "rails-ujs"

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Reduces boot times through caching
gem "bootsnap", require: false

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Use ActiveStorage variant
gem 'image_processing', '~> 1.2'
gem 'mini_magick', '~> 4.8'

group :development, :test do
  # Generates ER-diagrams using Graphviz, a visualization library
  gem 'rails-erd'

  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

gem 'email_validator', '~> 1.6'
gem 'bcrypt', '~> 3.1.7'

gem 'kaminari'
gem 'kaminari-i18n'

group :development do
  # Generates ER-diagrams using Graphviz, a visualization library
  gem 'rails-erd'

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

