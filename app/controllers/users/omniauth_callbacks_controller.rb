# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  Devise.omniauth_configs.keys.each do |provider|
    define_method provider do
      user = User.from_omniauth(auth)
      if user.persisted?
        sign_out_all_scopes
        flash[:success] = t 'devise.omniauth_callbacks.success', kind: provider.capitalize
        sign_in_and_redirect user, event: :authentication
      else
        flash[:alert] = t 'devise.omniauth_callbacks.failure', kind: provider.capitalize, reason: "#{auth.info.email} não foi autorizado"
        redirect_to new_user_session_path
      end
    end
  end

  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/heartcombo/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end

  private

  def auth
    @auth ||= request.env['omniauth.auth']
  end
end
