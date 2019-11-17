class ReviewsController < ApplicationController
  before_action :find_review, only: [ :destroy ]

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def new
    @review = Review.new
  end

  def destroy
    @review.destroy
    redirect_to cocktail_path(@review.cocktail)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def find_review
    @review = Review.find(params[:id])
  end
end
