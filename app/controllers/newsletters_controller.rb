class NewslettersController < ApplicationController

  def create
    @newsletter = Newsletter.new(params[:newsletter])
    respond_to do |format|
      if @newsletter.save
        format.html { redirect_to root_url, notice: 'Thank you for signing up to our mailing list.' }
        format.json { render json: @newsletter, status: :created, location: @newsletter }
      else
        format.html { redirect_to root_url, notice: 'Your email address is invalid, please try again.' }
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
