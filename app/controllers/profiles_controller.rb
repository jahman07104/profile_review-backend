class ProfilesController < ApplicationController
    def index
     # @profiles = Profile.all.order(:name)
      @profiles = profile.all
      render json: @profiles, status: 200
    end
  
    def show 
      @profile = Profile.find(params[:id])
  
      render json: @profile, status: 200
    end
  
    def create
      @profile = Profile.create(profile_params)
  
      render json:@profile, status: 200
    end
  
    def update
      @profile = Profile.find(params[:id])
      @profile.update(profile_params)
  
      render json:@profile, status: 200
    end
  
    def destroy
      @profile = Profile.find(params[:id])
      @profile.delete
  
      render json: {profileId: @profile.id}
    end
  
    private
    def Profile_params
      params.require(:profile).permit(:name,:image,:email,:city,:phone)
    end
  end
  
end
