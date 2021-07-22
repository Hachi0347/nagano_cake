class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :genre, foreign_key: true
      t.string :name
      t.string :image_id
      t.text :introduction
      t.integer :price
      t.boolean :is_active
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
