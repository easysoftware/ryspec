require "factory_bot_rails"

# To prevent loading factories from old core
FactoryBot.definition_file_paths = []

# FIXME: This is a temporary solution
#        Fix it by prevent loading any factories
#        in easyproject core if Ryspec is present
FactoryBot::Internal.reset_configuration
FactoryBot::Internal.register_default_strategies
FactoryBot::Internal.register_default_callbacks

Rys::PluginsManagement.all(systemic: true) do |plugin|
  FactoryBot.definition_file_paths << plugin.root.join('spec/factories').to_s

  Array.wrap(plugin.paths['additional/spec/factories']).each do |path|
    FactoryBot.definition_file_paths << File.join(Rails.root, path)
  end
end

FactoryBot.find_definitions
