class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def fitbit_oauth2
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Fitbit") if is_navigational_format?
    else
      session["devise.fitbit_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end
