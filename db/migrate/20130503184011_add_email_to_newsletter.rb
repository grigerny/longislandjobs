class AddEmailToNewsletter < ActiveRecord::Migration
  def change
    add_column :newsletters, :email, :string
  end
end
