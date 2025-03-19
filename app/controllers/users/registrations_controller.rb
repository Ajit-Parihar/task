# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController

  def sign_up_params    
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :admin_id)
  end
  
  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :first_name, :last_name)
  end
end
