class TravellersController < ApplicationController
before_action :verify_logged_in

def index
  @travellers= Traveller.all
  @account=Account.all
end



end
