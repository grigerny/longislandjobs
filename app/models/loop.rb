class Loop < ActiveRecord::Base
  belongs_to :user
  attr_accessible :firstname, :lastname, :title, :phone, :email, :website, :location, :comment, :date, :user_id
end
