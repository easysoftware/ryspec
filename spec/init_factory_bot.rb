require "factory_bot_rails"

# To prevent loading factories from old core
FactoryBot.definition_file_paths = []
FactoryBot.reset_configuration

# FIXME: This is a temporary solution
#        Fix it by prevent loading any factories
#        in easyproject core if Ryspec is present
FactoryBot::Internal.register_default_strategies
FactoryBot::Internal.register_default_callbacks

Rys::PluginsManagement.all do |plugin|
  FactoryBot.definition_file_paths << plugin.root.join('spec/factories')
end

FactoryBot.find_definitions
