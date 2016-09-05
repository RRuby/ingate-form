class UsersController < ApplicationController
  def index
    @user = User.new
    @users = User.all

    respond_to do |format|
      format.html
    end
  end

  def create
    @user = User.create(safe_params)

    if @user.save
      redirect_to users_path, notice: I18n.t('notice.success') and return
    else
      redirect_to users_path, alert: I18n.t('notice.failure') and return
    end

    respond_to do |format|
      format.html
    end
  end

  private

  def safe_params
    params.require(:user).permit(:full_name, :phone, :email)
  end
end
