class Loop < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :title, :phone, :email, :website, :location, :commments, :date
end
