class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :customer, foreign_key: true
      t.string :shipping_customer_name
      t.string :shipping_postal_code
      t.string :shipping_address
      t.integer :payment_method
      t.integer :billing_amount
      t.integer :shipping_fee
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :order_status

      t.timestamps
    end
  end
end
