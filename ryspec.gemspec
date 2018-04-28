$:.push File.expand_path('lib', __dir__)

require 'ryspec/version'

Gem::Specification.new do |s|
  s.name        = 'ryspec'
  s.version     = Ryspec::VERSION
  s.authors     = ['Ondřej Moravčík']
  s.email       = ['moravcik.ondrej@gmail.com']
  s.homepage    = 'https://easysoftware.com'
  s.summary     = 'Summary of Ryspec.'
  s.description = 'Description of Ryspec.'
  s.license     = 'GNU/GPL 2'

  s.files = Dir['{app,config,db,lib}/**/*', 'Rakefile', 'README.md', 'gems.rb', 'dependencies.rb']
  s.test_files = Dir['test/**/*', 'spec/**/*']

  s.add_dependency 'rys'
  s.add_development_dependency 'pry-rails'
end
