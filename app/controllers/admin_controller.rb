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

 def checkadmin
     
 end


  def match
    admin = Admin.find(params_admin[:id])
   
    if admin && admin.authenticate(params[:admin][:password])
      session[:admin_id] = admin.id
      flash[:notice] = "Login successful!"
      redirect_to admin_index_path  # Change this to the admin dashboard path
    else
      flash[:alert] = "Invalid email or password"
      redirect_to admin_check_path
    end
 end




 def destroy
 end

 private

 def params_admin
    params.require(:admin).permit(email:, password:)
 end

end