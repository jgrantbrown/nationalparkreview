class NatparksController < ApplicationController

  def index
    @natparks = Natpark.all
  end

  def show
     @natpark = Natpark.find(params[:id])
    
  end

end
