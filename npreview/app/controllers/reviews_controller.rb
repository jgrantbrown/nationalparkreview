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
    @review = Review.find(params[:id])
    @natpark= Natpark.find(@review.natpark_id)
  end

  def update
    @review=Review.find(params[:id])
    @review.update(title: params[:review][:title], comment: params[:review][:comment])
    @natpark = Natpark.find(@review.natpark_id)
    redirect_to natpark_path(@natpark)
  end

  def destroy
    
    @review = Review.find(params[:id]).destroy
    @natpark = Natpark.find(@review.natpark_id)
    redirect_to natpark_path(@natpark)
  end

private
    def review_params
      params.require(:review).permit(:title,:comment, :natpark_id, :traveller_id)
    end
end
