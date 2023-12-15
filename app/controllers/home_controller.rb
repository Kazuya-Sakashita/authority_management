class HomeController < ApplicationController
  before_action :authenticate_user!
  # before_action :check_permissions, only: [:index]

  def index
    @user = current_user

    @is_president = current_user.has_role?('社長')
    @is_manager = current_user.has_role?('課長')
    @is_member = current_user.has_role?('メンバー')
  end

  def check_permissions
    unless current_user.has_role?('メンバー')
      redirect_to root_path, alert: 'You do not have permission to access this page.'
    end
  end


  def has_role?(role_name)
    current_user.roles.any? { |role| role.name == role_name }
  end
end
