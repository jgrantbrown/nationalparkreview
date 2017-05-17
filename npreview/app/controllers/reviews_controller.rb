class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end



  def create
    @review = Review.create(review_params)
    @natpark = @review.natpark_id
    redirect_to @natpark
  end



private
    def review_params
      params.require(:comment,:title).permit(:traveller_id, :natpark_id)
    end
end
