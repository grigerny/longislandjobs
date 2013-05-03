class NewslettersController < ApplicationController
   
  def new
    @newsletter = Newsletter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @newsletter }
    end
  end


  def create
    @newsletter = Newsletter.new(params[:newsletter])

    respond_to do |format|
      if @newsletter.save
        format.html { redirect_to @newsletter, notice: 'Newsletter was successfully created.' }
        format.json { render json: @newsletter, status: :created, location: @newsletter }
      else
        format.html { render action: "new" }
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
