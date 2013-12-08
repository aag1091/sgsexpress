# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shipment do
    tracking_id "MyString"
    sender_id 1
    booking_date "2013-12-08 14:25:51"
    reciever_id 1
    delivery_date "2013-12-08 14:25:51"
    remark "MyText"
  end
end
