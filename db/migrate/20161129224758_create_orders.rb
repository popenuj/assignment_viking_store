class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.datetime :placement_date, null: false
      t.datetime :ship_date
      t.integer :user_id, null: false
      t.integer :shipment_address_id, null: false
      t.integer :billing_address_id, null: false

      t.timestamps
    end
  end
end
