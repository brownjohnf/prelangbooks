# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :entity do
    type ""
    type_id 1
    universe nil
    name "MyString"
  end
end
