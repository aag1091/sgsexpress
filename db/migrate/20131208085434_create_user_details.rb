class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :name
      t.text :address
      t.string :locality
      t.string :city
      t.string :pincode
      t.string :state
      t.string :country
      t.string :phone
      t.string :mobile

      t.timestamps
    end
  end
end
