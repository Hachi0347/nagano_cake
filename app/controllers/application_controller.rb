class ApplicationController < ActionController::Base
  before_action :authenticate_customer!, except: [:top, :about]
  
  def after_sign_in_path_for(resource)
    customers_path
  end
  
  def after_sign_up_path_for(resource)
    customers_path
  end
  
  def after_sign_out_path_for(resource)
    root_path
  end
  
  private
  
  # I think It's not working
  # def redirect_root
  #   redirect_to root_path unless user_signed_in?
  # end
  
  before_action :configure_permitted_parameters, if: :devise_controller?
    
  private
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number])
  end
end
