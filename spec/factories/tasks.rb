# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    sequence(:description) { |n| "Task#{n}" }
    sequence(:duedate) { |n| "7/1#{n}/2#{n}1#{n}" }
    taskable_id 1
    taskable_type "MyString"
    association :taskable, factory: :todouser
    association :taskable, factory: :folder
  end
end
