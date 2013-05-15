class Loop < ActiveRecord::Base
  acts_as_commentable
  belongs_to :user
  has_many :comments
  attr_accessible :firstname, :lastname, :title, :phone, :email, :website, :location, :comment, :date, :industry, :user_id
  
  validates_presence_of :firstname, :lastname, :location, :date
  validates_format_of :email, :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

  
  before_validation :smart_add_link_protocol
  
  protected
    
  def smart_add_link_protocol
    unless self.website[/^http:\/\//] || self.website[/^https:\/\//]
      self.website = 'http://' + self.website
    end
  end
  
end
