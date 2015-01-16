class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def all
    user = User.from_omniauth(env["omniauth.auth"])

     if user.persisted?
      flash.notice = "Signed in Successfully with Facebook"
      sign_in_and_redirect user
    else
      
      redirect_to new_user_registration_url
    end
   
    
  end

  alias_method :facebook, :all
end



