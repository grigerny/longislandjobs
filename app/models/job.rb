class Job < ActiveRecord::Base
  attr_accessible :title, :description, :link, :contact_info
  
  validates_presence_of :title, :description, :contact_info
end
