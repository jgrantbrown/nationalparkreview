class NatparksController < ApplicationController
  before_action :verify_logged_in
  # before_action :verify_logged_in, only: [:new, :create, :edit, :update, :destroy]
  # def initialize
  # end
  def index
    @natparks = Natpark.sort_by_review_count()
    @designations= Natpark.designations()

  end

  def show
     @natpark = Natpark.find(params[:id])
     @account = Account.all
  end

end
