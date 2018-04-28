git_source(:easy_git){ |name| "git@git.easy.cz:platform-2.0/#{name}.git" }

group :rys do
  group :default do
    gem 'rys', easy_git: 'rys', branch: 'master'
  end

  group :test, :development do
    gem 'rspec-rails', require: false
  end

  group :test do
    gem 'faker'
    gem 'launchy'
    gem 'capybara'
    gem 'rspec-rails'
    gem 'poltergeist'
    gem 'database_cleaner'
    gem 'factory_bot_rails'
    # gem 'selenium-webdriver'
  end
end
