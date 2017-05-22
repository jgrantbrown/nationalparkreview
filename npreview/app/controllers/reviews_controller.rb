class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def create
    @review = Review.create(review_params)
    @natpark = Natpark.find(@review.natpark_id)
    redirect_to natpark_path(@natpark)
  end

  def edit
    @review = Review.create(review_params)
  end

  def update

  end

  def destroy
    @review = Review.find_by(:id=>review_url.split('/').last).destroy
    @natpark = Natpark.find(@review.natpark_id)
    redirect_to natpark_path(@natpark)
  end

private
    def review_params
      params.require(:review).permit(:title,:comment, :natpark_id, :traveller_id)
    end
end
