git_source(:github) {|name| "https://github.com/#{name}.git" }

group :rys do
  group :default do
    gem 'rys', github: 'easysoftware/rys', branch: 'master'
  end

  group :test, :development do
    gem 'puma', '~> 3.12'
    gem 'rspec-rails', '~> 3.8', require: false
    gem 'simplecov', require: false
  end

  group :test do
    gem 'capybara', '~> 3.0.3'
    gem 'database_cleaner', '~> 1.7.0'
    gem 'factory_bot_rails', '~> 4.8.2'
    gem 'faker', '~> 1.8.7'
    gem 'launchy', '~> 2.4.3'
    gem 'poltergeist', '~> 1.18.0'
    gem 'webmock', '~> 3.5.1'
  end
end
