class PagesController < ApplicationController
  def home
     @contact = Pages.new(params[:pages])
     @tours = Tour.order(:id)
  end

  def create
    @contact = Pages.new(params[:pages])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        # re-initialize Pages object for cleared form
        @contact = Pages.new
        format.html { render 'home' }
        format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
      else
        format.html { render 'home' }
        format.js   { flash.now[:error] = @message = "Message did not send." }
      end
    end
  end
end
