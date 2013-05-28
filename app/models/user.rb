class User < ActiveRecord::Base
  has_many :loops, :dependent => :destroy
  has_many :friendships
  has_many :friends, :through => :friendships, :dependent => :destroy
  has_many :comments
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :token
  # attr_accessible :title, :body
  
  before_create :generate_token

   protected

   def generate_token
     begin
       token = SecureRandom.hex(3)
     end while User.where(:token => token).exists?
     self.token = token
   end
   
end
