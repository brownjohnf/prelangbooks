# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :property do
    type ""
    type_id 1
    key_name "MyString"
    value "MyText"
  end
end
