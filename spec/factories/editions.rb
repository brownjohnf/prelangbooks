# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :edition do
    author nil
    name "MyString"
    publisher nil
    universe nil
    title "MyString"
    binding "MyString"
    pages 1
    language "MyString"
  end
end
