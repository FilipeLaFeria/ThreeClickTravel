class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show edit update destroy]

  def show
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      redirect_to root_path, notice: 'Profile was successfully added'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @profile.update(profile_params)
    redirect_to root_path, notice: 'Profile was successfully updated'
  end

  def destroy
    @profile.destroy
    redirect_to root_path, notice: 'Profile was successfully destroyed'
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:username, :first_name, :last_name, :date, :budget)
  end
end
