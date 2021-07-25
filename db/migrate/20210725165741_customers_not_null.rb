class CustomersNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :customers, :last_name, false
    change_column_null :customers, :first_name, false
    change_column_null :customers, :last_name_kana, false
    change_column_null :customers, :first_name_kana, false
    change_column_null :customers, :email, false
    change_column_null :customers, :encrypted_password, false
    change_column_null :customers, :postal_code, false
    change_column_null :customers, :address, false
    change_column_null :customers, :telephone_number, false
    change_column_null :customers, :is_active, false
  end
end
