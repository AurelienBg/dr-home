class UsersController < ApplicationController
  def edit
    @user = current_user
    authorized(@user)

  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name,:specialty, :address, :city, :zipcode, :phone, :min_consultation, :sex, :cardnumber)
  end
end
