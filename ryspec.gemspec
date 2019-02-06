# encoding: utf-8

$:.push File.expand_path('lib', __dir__)
require 'ryspec/version'

Gem::Specification.new do |s|
  s.name        = 'ryspec'
  s.version     = Ryspec::VERSION
  s.authors     = ['Ondřej Moravčík']
  s.email       = ['info@easysoftware.com']
  s.homepage    = 'https://easysoftware.com'
  s.summary     = 'Summary of Ryspec.'
  s.description = 'Description of Ryspec.'
  s.license     = 'GPL-2.0-or-later'

  s.metadata['allowed_push_host'] = 'https://gems.easysoftware.com'

  s.files = Dir['{app,config,db,lib,patches}/**/{*,.*}', 'Rakefile', 'README.md', 'gems.rb']
  s.test_files = Dir['test/**/*', 'spec/**/*']

  s.add_dependency 'rys'
  s.add_dependency 'rspec-rails', '~> 3.8'
  s.add_dependency 'simplecov'
  s.add_dependency 'capybara'#, '~> 3.0.3'
  s.add_dependency 'database_cleaner', '~> 1.7.0'
  s.add_dependency 'factory_bot_rails', '~> 4.8.2'
  s.add_dependency 'faker', '~> 1.8.7'
  s.add_dependency 'launchy', '~> 2.4.3'
  s.add_dependency 'poltergeist'#, '~> 1.18.0'
  s.add_dependency 'webmock', '~> 3.5.1'
end
