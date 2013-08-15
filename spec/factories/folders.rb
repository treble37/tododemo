# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :folder do
    sequence(:name) {|n| "Folder#{n}"}
    todouser_id 1
    association :todouser
  end
end
