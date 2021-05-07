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
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'capybara'
  s.add_dependency 'database_cleaner-active_record', '~> 2.0.0'
  s.add_dependency 'factory_bot_rails', '~> 6.1'
  s.add_dependency 'rspec-rails', '~> 5.0'
  s.add_dependency 'rubocop', '~> 1.13.0'
  s.add_dependency 'rubocop-rails', '~> 2.9.0'
  s.add_dependency 'rys'
  s.add_dependency 'webmock', '~> 3.12.2'
end
