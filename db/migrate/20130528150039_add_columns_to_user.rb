class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :title, :string
    add_column :users, :phone, :string
    add_column :users, :website, :string
    add_column :users, :industry, :string
  end
end