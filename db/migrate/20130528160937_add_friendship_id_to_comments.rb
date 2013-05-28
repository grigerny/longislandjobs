class AddFriendshipIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :friendship_id, :integer
  end
end
