require 'rys'

require 'ryspec/engine'

module Ryspec

  # @param [String, Symbol] name of Redmine plugin (Symbol is preferred)
  # @param [String] filename of factory in `test/factories` (by default its name of plugin)
  # @param [String, Symbol] factory_name of FactoryBot.define (by default its equal to filename)
  #
  # @example Ryspec.require_factory :easy_contacts, filename: "easy_contact"
  def self.require_factory(name, filename: nil, factory_name: nil)
    factory_name ||= filename || name
    return if FactoryBot.factories.registered? factory_name

    factory_file = File.join(Redmine::Plugin.find(name).directory, "/test/factories/#{filename || name}")
    raise ArgumentError, "File `#{factory_file}` doesnt exists!" unless File.exist?(factory_file)

    require factory_file
  end

end
