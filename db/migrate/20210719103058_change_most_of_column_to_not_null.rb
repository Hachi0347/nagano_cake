class ChangeMostOfColumnToNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :addresses, :customer_id, false
    change_column_null :addresses, :name, false
    change_column_null :addresses, :postal_code, false
    change_column_null :addresses, :address, false
    change_column_null :cart_items, :item_id, false
    change_column_null :cart_items, :customer_id, false
    change_column_null :cart_items, :amount, false
    change_column_null :genres, :name, false
    change_column_null :items, :genre_id, false
    change_column_null :items, :name, false
    change_column_null :items, :image_id, false
    change_column_null :items, :introduction, false
    change_column_null :items, :price, false
    change_column_null :items, :is_active, false
    change_column_null :order_details, :order_id, false
    change_column_null :order_details, :item_id, false
    change_column_null :order_details, :price, false
    change_column_null :order_details, :amount, false
    change_column_null :order_details, :production_status, false
    change_column_null :orders, :customer_id, false
    change_column_null :orders, :shipping_customer_name, false
    change_column_null :orders, :shipping_postal_code, false
    change_column_null :orders, :shipping_address, false
    change_column_null :orders, :payment_method, false
    change_column_null :orders, :billing_amount, false
    change_column_null :orders, :shipping_fee, false
    change_column_null :orders, :order_status, false
  end
end
