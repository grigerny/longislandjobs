class Comment < ActiveRecord::Base
  belongs_to :loop
  belongs_to :user
  belongs_to :friendship
  
  attr_accessible :body, :user_id, :loop_id, :friendship_id
end
