class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.text :description
      t.string :dimension
      t.integer :weight
      t.references :shipment, index: true

      t.timestamps
    end
  end
end
