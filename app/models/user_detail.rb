class UserDetail < ActiveRecord::Base
  
  # has_one :sent_shipment, class_name: 'Shipment', foreign_key: :sender_id
  # has_one :reciever_shipment, class_name: 'Shipment', foreign_key: :reciever_id

end
