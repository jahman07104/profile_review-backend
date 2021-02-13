class ProfilesController < ApplicationController
  def index
   # @profiles = Profile.all.order(:name)
    @profiles = Profile.all
    render json: @profiles, status: 200
  end

  def show
    @profile = Profile.find(params[:id])

    render json: @profile, status: 200
  end

  def create
    @profile = Profile.create(profile_params)

    render json: @profile, status: 200
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)

    render json: @profile, status: 200
  end

  def destroy
    @profile = Profile.find(params[:id])
    profile_id = @profile.id
    @profile.destroy
    render json: { id: profile_id }
  end

  private
  
  def profile_params
    params.require(:profile).permit(:name, :image, :email, :city, :phone, :rating)
  end
end
