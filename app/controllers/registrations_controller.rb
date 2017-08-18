class RegistrationsController < Devise::RegistrationsController
    private
    def sign_up_params
      params.require(:user).permit(:userid, :name, :email, :password, :password_confirmation, :number)
    end

    def account_update_params
        params.require(:user).permit(:userid, :name, :email, :password, :password_confirmation, :current_password, :number)
    end    
end
