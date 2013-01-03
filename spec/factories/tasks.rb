# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    description "MyText"
    duedate "MyString"
    taskable_id 1
    taskable_type "MyString"
  end
end
