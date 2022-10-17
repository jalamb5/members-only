class RegistrationsController < Devise::RegistrationsController
  private
  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_params)

  #   if @user.save
  #     flash[:notice] = "Thanks for signing up!"
  #     session[:user_id] = @user.id
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end

  # private

  # def user_params
  #   params.require(:user).permit(:username, :password)
  # end

end
