require 'rys'

require 'ryspec/engine'

module Ryspec

  # @param [String, Symbol] plugin_name of Redmine plugin (Symbol is preferred)
  # @param [String] file_name of factory in `test/factories` (by default its name of plugin)
  # @param [String, Symbol] factory_name of FactoryBot.define (by default its equal to filename)
  #
  # @example Ryspec.require_factory :easy_contacts, file_name: "easy_contact"
  def self.require_factory(plugin_name, file_name: nil, factory_name: nil)
    factory_name ||= file_name || plugin_name
    return if FactoryBot.factories.registered? factory_name

    factory_file_name = (file_name || plugin_name).to_s
    factory_file_name << ".rb" unless factory_file_name.end_with?(".rb")
    factory_file = File.join(Redmine::Plugin.find(plugin_name).directory, "/test/factories/#{factory_file_name}")
    raise ArgumentError, "File `#{factory_file}` doesnt exists!" unless File.exist?(factory_file)

    load factory_file
  end

end
