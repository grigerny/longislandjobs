class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, :class_name => "User"
  has_many :friendshipcomments
  
  attr_accessible :friend_id, :user_id
  
end
