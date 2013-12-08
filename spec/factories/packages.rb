# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :package do
    name "MyString"
    description "MyText"
    dimension "MyString"
    weight 1
    shipment nil
  end
end
