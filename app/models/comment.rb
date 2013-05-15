class Comment < ActiveRecord::Base
  attr_accessible :body, :user_id, :loop_id
  belongs_to :loop
  belongs_to :user
end
