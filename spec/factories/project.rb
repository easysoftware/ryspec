FactoryBot.define do

  factory :project do
    transient do
      number_of_issues { 0 }
      trackers { [] }
    end

    sequence(:name){ |n| "Project ##{n}" }
    sequence(:identifier){ |n| "identifier_#{n}" }

    after(:create) do |project, evaluator|
      trackers = Array.wrap(evaluator.trackers)
      trackers = Tracker.all.to_a if trackers.empty?
      trackers = [FactoryBot.create(:tracker)] if trackers.empty?
      project.trackers = trackers

      FactoryBot.create_list :issue, evaluator.number_of_issues, project: project
    end

  end

end
