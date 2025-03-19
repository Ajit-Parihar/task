class AdminController < ApplicationController
  def index
     @admin = current_admin
  end

  def edit
  end
   
  def new
    @admin = ActionDispatch::Http::MimeNegotiation::BROWSER_LIKE_ACCEPTS.new
  end

  def create

  end

  def destroy
  end

end
