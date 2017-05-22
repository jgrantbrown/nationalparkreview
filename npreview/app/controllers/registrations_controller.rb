class RegistrationsController < ApplicationController

  def new
    @account = Account.new
  end

  def create
    account = Account.create(account_params)
# Clarify this??
    session[:account_id]=account.id
    redirect_to natparks_path
  end

  private

  def account_params
    params.require(:account).permit(:username, :password)
  end

end
