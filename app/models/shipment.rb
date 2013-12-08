class Shipment < ActiveRecord::Base

  has_many :packages
  belongs_to :sender, class_name: 'UserDetail', foreign_key: :sender_id
  belongs_to :reciever, class_name: 'UserDetail', foreign_key: :reciever_id

  before_save :capitalize_tracking_id

  def capitalize_tracking_id
    self.tracking_id = self.tracking_id.upcase
  end

end
