class CreateFriendshipcomments < ActiveRecord::Migration
  def change
    create_table :friendshipcomments do |t|
       t.integer :user_id
       t.integer :friendship_id
       t.text :body
      t.timestamps
    end
  end
end
