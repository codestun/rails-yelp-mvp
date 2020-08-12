class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.new(review_params)
    # => #<Review:0x00007fbbbc035348 id: nil, content: "Great!", rating: nil, restaurant_id: 1, created_at: nil, updated_at: nil>
    if @review.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
