class RatingsController < ApplicationController
  def index
    @ratings = Ratings.all
    render json: @ratings, status: 200
  end

  def create
    @rating = Rating.create!(rating_params)
    render json: @rating, status: 200
  end

  def show 
    @rating= Rating.find(params[:id])
    render json: @rating, status: 200
  end

  def update
   @ratings= Rating.find(params[:id])
    @rating.update(rating_params)
    render json: @rating, status: 200
  end

  def delete
   @ratings= Rating.find(params[:id])
    @rating.delete

    render json: {ratingId: @rating.id}
  end

  private
    def rating_params
      params.permit(:id, :profile_id, :star)
    end  
end