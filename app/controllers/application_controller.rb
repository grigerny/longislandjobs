class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :mailing_list

  def mailing_list
    @newsletter = Newsletter.new
  end
  
  before_filter :set_search

  def set_search
    @search = User.search(params[:q])
  end
  
end
