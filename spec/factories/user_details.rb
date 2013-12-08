# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_detail do
    name "MyString"
    address "MyText"
    phone "MyString"
    mobile "MyString"
  end
end
