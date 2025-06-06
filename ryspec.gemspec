$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'ryspec/version'

Gem::Specification.new do |s|
  s.name = 'ryspec'
  s.version = Ryspec::VERSION
  s.authors = ['Ondřej Moravčík', 'Lukáš Pokorný']
  s.email = ['info@easysoftware.com']
  s.homepage = 'https://github.com/easysoftware/ryspec'
  s.summary = 'RSpec basics for RYSy.'
  s.description = 'Define spec_helper, Redmine factories and some helpers for RSpec in RYSy ecosystem.'
  s.license = 'GPL-2.0-or-later'

  s.metadata['allowed_push_host'] = 'https://gems.easysoftware.com'

  s.files = Dir['{app,config,db,lib,patches}/**/{*,.*}', 'Rakefile', 'README.md', 'gems.rb']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'capybara'
  s.add_dependency 'database_cleaner-active_record'
  s.add_dependency 'factory_bot_rails'
  s.add_dependency 'rspec-rails'
  s.add_dependency 'rys'
  s.add_dependency 'webmock'
  s.add_dependency 'rspec_junit_formatter'
  s.add_dependency 'shoulda-matchers'

  s.add_development_dependency 'easy_style'
end
