class ReviewsController < ApplicationController

  def index
    
    @reviews = Review.all
  end

  def new
    set_restaurant
    @review = Review.new
  end

  def create
    set_restaurant
    @review = Review.new(review_params)
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
