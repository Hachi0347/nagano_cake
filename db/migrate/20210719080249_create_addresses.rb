class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :customer, foreign_key: true
      t.string :name
      t.string :postal_code
      t.string :address
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
