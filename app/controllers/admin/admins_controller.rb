class Admin::AdminsController < ApplicationController
  before_action :authenticate_admin!
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

 def checkadmin
     
 end

  def match
     @email = params[:email]
     @password = params[:password]
    # @email = params_admin
 
    @admin = current_admin
    puts @admin.password.inspect
    if @admin.email == @email 
      if @admin.valid_password?(@password)
        redirect_to admin_index_path, notice: "welcome admin"
        return
      end
    end
    redirect_to admin_check_path, notice: "Invalid email and password"
 end


 def destroy
     
 end

 private

 def params_admin
    params.require(:admin).permit(:email, :password)
 end

end