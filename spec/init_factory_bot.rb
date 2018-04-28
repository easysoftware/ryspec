Rys::PluginsManagement.all do |plugin|
  FactoryBot.definition_file_paths << plugin.root.join('spec/factories')
end

FactoryBot.find_definitions
