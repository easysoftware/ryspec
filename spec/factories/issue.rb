FactoryBot.define do

  factory :issue do
    # transient do
    #   factory_is_child false
    #   watchers []
    # end

    sequence(:subject) { |n| "Issue ##{n}" }
    project { FactoryBot.create(:project, number_of_issues: 0) }
    tracker { project.trackers.first }
    start_date { Date.today }
    due_date { Date.today + 7.days }
    status { tracker.default_status }
    priority { IssuePriority.default || FactoryBot.create(:issue_priority, :default) }

    author { FactoryBot.build(:user) }
    assigned_to { author }
  end

end
