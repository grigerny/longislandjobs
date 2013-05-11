class AddFirstnameToLoop < ActiveRecord::Migration
  def change
    add_column :loops, :firstname, :string
    add_column :loops, :lastname, :string
    add_column :loops, :title, :string
    add_column :loops, :phone, :string
    add_column :loops, :email, :string
    add_column :loops, :website, :string
    add_column :loops, :location, :string
    add_column :loops, :commments, :text
    add_column :loops, :date, :date
    add_column :loops, :user_id, :integer
  end
end
