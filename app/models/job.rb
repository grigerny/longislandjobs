class Job < ActiveRecord::Base
  attr_accessible :title, :description, :link, :contact_info, :field
  
  validates_presence_of :title, :description, :contact_info
  validates_length_of :title, :maximum => 60
  
  before_validation :smart_add_link_protocol

  protected

  def smart_add_link_protocol
    unless self.link[/^http:\/\//] || self.link[/^https:\/\//]
      self.link = 'http://' + self.link
    end
  end
end
