class Comment < ActiveRecord::Base
  belongs_to :loop
  belongs_to :user

  
  attr_accessible :body, :user_id, :loop_id
end
