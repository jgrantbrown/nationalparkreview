class RegistrationsController < ApplicationController

  def new
    @account = Account.new
  end

  def create
      account = Account.new(account_params)
      @traveller=Traveller.create
      account.traveller_id = @traveller.id
      account.save
    if
      session[:account_id]=account.id
      redirect_to parktypes_path
    else
      flash[:error] = "username or email is already taken"
      redirect_to new_registration_path
    end
  end

  private

  def account_params
    params.require(:account).permit(:username, :password, :first_name, :last_name, :email)
  end

end
