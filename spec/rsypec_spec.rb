RSpec.describe Ryspec do
  describe ".require_factory" do
    it "undefine plugin raise error" do
      expect { described_class.require_factory :dummy_plugin }.to raise_error Redmine::PluginNotFound
    end

    it "plugin exist but factory file not" do
      allow(Redmine::Plugin).to receive(:find).and_return double("plugin", directory: Rails.root.join("plugins/easy_contacts"))
      expect { described_class.require_factory :easy_contacts }.to raise_error ArgumentError
    end
  end
end
