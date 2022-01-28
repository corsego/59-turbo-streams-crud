source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

gem "rails", "~> 7.0.0.alpha2"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails", ">= 0.3.4"
gem "turbo-rails", ">= 0.7.11"
gem "stimulus-rails", ">= 0.4.0"
gem "jbuilder", "~> 2.7"
gem "redis", "~> 4.0"
gem "bootsnap", ">= 1.4.4", require: false
gem "sassc-rails", "~> 2.1"
# gem "bcrypt", "~> 3.1.7"
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", ">= 1.0.0", platforms: %i[ mri mingw x64_mingw ]
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry', '~> 0.13.1'
  gem 'pry-byebug'
end

group :development do
  gem "web-console", ">= 4.1.0"
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "faker", "~> 2.19", :group => :development
