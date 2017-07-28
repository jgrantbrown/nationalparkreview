class ParktypesController < ApplicationController
  before_action :verify_logged_in
  # before_action :verify_logged_in, only: [:new, :create, :edit, :update, :destroy]
  # def initialize
  # end
  def index
    @natparks = Natpark.all
    @designations= Natpark.designations()

  end

  def show
    @natparks=Natpark.all
    @designations= Natpark.designations()
    @account = Account.all

  end

end
