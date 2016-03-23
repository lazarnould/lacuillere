class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [ :new, :create ]
  def index
    @reviews = Review.all
  end

  def show
  end

  def create
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def new
    @review = Review.new
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
