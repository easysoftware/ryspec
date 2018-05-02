
group :rys do
  group :default do
    gem 'rys', github: 'easysoftware/rys', branch: 'master'
  end

  group :test, :development do
    gem 'rspec-rails', '~> 3.7.2', require: false
  end

  group :test do
    gem 'capybara', '~> 2.18.0'
    gem 'database_cleaner', '~> 1.6.2'
    gem 'factory_bot_rails', '~> 4.8.2'
    gem 'faker', '~> 1.8.7'
    gem 'launchy', '~> 2.4.3'
    gem 'poltergeist', '~> 1.17.0'
    gem 'webmock', '~> 3.4.1'
  end
end
