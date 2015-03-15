class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @user.build_profile if @user.profile.nil?
  end

  def profile
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(user_params)
p "Errors are #{@user.errors.messages}"
        format.html {redirect_to user_path(@user), notice: "Profile saved successfully."}
      else
        format.html {render action: "edit"}
      end
    end

  end

  def user_params
    params.require(:user).permit(profile_attributes: [:name, :nickname, :local_address, :permanent_address, :phone_number, :date_of_birth])
  end

end
