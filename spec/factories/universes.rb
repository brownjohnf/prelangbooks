# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :universe do
    author nil
    name "MyString"
    string "MyText"
  end
end
