# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  # before_action :authenticate_user!, only: [:new]
  # GET /resource/sign_up
  def new
    @user = User.new

  end

end
