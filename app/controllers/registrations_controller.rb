class RegistrationsController < Devise::RegistrationsController

	private

	def sign_up_params
		params.require(:user).permit(:email, :password, :password_confirmation, :username)
	end

	def accout_update_params
		params.require(:user).permit(:email, :password, :password_confirmation, :username, :current_password)
	end

end