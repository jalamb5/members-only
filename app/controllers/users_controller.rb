class UsersController < Devise::RegistrationsController
  # private
  # def sign_up_params
  #   params.require(:user).permit(:username, :email, :password, :password_confirmation)
  # end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "Thanks for signing up!"
      session[:user_id] = @user.id
      redirect_to "posts#index"
    else
      # render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
