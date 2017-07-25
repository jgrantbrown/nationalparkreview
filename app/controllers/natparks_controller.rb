class NatparksController < ApplicationController
  before_action :verify_logged_in
  # before_action :verify_logged_in, only: [:new, :create, :edit, :update, :destroy]
  # def initialize
  # end
helper_method :create_parks


  def index

    @natparks = Natpark.all

  end

  def show
     @natpark = Natpark.find(params[:id])
     @reviews = Review.select{|review| review.natpark_id == @natpark.id}
     @account = Account.all
    #  @account= Account.select{|account| @review.traveller_id == account.traveller_id}
  end

end
