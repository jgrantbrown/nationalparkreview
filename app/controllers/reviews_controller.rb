class ReviewsController < ApplicationController
  before_action :verify_logged_in
  # before_action :verify_logged_in, only: [:new, :create, :edit, :update, :destroy]
  def index
    @reviews = Review.all
  end

  def create

      # if the request was an ajax request (google rails respond_to)
      # save the review to the db (normal)
      # send back json representation of the review object
      # in the js code, in the success callback, we'll recieve that jsopn as a response
      #  append that data to the page
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

  # def username
  #
  # end

private
    def review_params
      params.require(:review).permit(:title,:comment,:natpark_id,:traveller_id)
    end
end
