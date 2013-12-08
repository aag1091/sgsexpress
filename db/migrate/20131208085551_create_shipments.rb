class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :tracking_id
      t.integer :sender_id
      t.datetime :booking_date
      t.integer :reciever_id
      t.datetime :delivery_date
      t.text :remark

      t.timestamps
    end
  end
end
