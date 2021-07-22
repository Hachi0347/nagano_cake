class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :email
      t.string :encrypted_password
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
