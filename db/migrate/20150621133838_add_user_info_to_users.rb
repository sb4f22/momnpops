class AddUserInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tag_line, :string
    add_column :users, :street_one, :string
    add_column :users, :street_two, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip_code, :string
    add_column :users, :phone_number, :string
    add_column :users, :website, :string
    add_column :users, :description, :string
    add_column :users, :category, :string
    add_column :users, :tags, :text
  end
end
