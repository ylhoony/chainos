class AccountAddressesController < ApplicationController

  def index
    @account_addresses = current_account.account_addresses.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @account_addresses, status: 201 }
    end
  end

  def new
    
  end

  def create
    
  end

  def show
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def set_account_address
    
  end

  def account_address_params
    
  end

end
