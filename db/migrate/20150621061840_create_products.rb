class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :name
      t.integer :price
      t.integer :quantity
      t.string :picture 
      t.text :description
      t.string :tag_line
    end
  end
end
