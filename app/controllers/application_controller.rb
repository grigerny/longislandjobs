class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :mailing_list

  def mailing_list
    @newsletter = Newsletter.new
  end
  
end
