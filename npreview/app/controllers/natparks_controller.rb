class NatparksController < ApplicationController

  def index
    @natparks = Natpark.all
  end

  def show
     @natpark = Natpark.find(params[:id])
     @reviews = Review.select{|review| review.natpark_id == @natpark.id}
     
  end

end
