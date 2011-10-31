class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :english
      t.string :japanese
      t.string :category
      t.boolean :personal
      t.integer :comfort
      t.text :memo
      t.references :user

      t.timestamps
    end
    add_index :words, :user_id
  end
end
