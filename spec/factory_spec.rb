RSpec.describe "Lint builtin factories" do

  def factories(names)
    names.collect { |name| FactoryBot::Internal.factory_by_name(name) }
  end

  it { FactoryBot.lint factories(%i[custom_field easy_custom_field_group user]) }

  context "Issue" do
    it { FactoryBot.lint factories(%i[issue issue_custom_field journal tracker issue_status issue_priority]) }
  end

  context "News" do
    it { FactoryBot.lint factories(%i[news]) }
  end

  context "Project" do
    it { FactoryBot.lint factories(%i[project role]) }
  end

  context "TimeEntry" do
    before(:each) do
      FactoryBot.modify do
        factory :time_entry do
          after(:build) do |time_entry|
            time_entry.author ||= create(:user) if time_entry.author.nil?
          end
        end
      end
    end

    it { FactoryBot.lint factories(%i[time_entry time_entry_activity]) }
  end
end
