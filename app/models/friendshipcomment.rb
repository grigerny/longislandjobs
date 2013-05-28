class Friendshipcomment < ActiveRecord::Base
    belongs_to :friendship
    belongs_to :user
    attr_accessible :body, :user_id, :friendship_id
end
