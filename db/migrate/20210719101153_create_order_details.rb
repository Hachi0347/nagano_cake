class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.references :order, foreign_key: true
      t.references :item
      t.integer :price
      t.integer :amount
      t.integer :production_status
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
