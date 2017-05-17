class ReviewsController < ApplicationController

  def new
  end

  def index
  @reviews= Reviews.all
  end

  def show
  end

end
