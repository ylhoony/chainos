class AccountAddressesController < ApplicationController
  before_action :set_account_address, only: [:show, :edit, :udpate, :destroy]

  def index
    @account_addresses = current_account.account_addresses.all
    respond_to do |format|
      format.html
      format.js
      format.json { render json: @account_addresses, status: 201 }
    end
  end

  def new
    
  end

  def create
    @account_address = current_account.account_addresses.build(account_address_params)
    @account_address.save
    respond_to do |format|
      format.html { redirect_to account_address_path(@account_address) }
      format.json { render json: @account_address, status: 201 }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.js
      format.json { render json: @account_address, status: 201 }
    end 
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def set_account_address
    @account_address = current_account.account_addresses.find(params[:id])
  end

  def account_address_params
    params.require(:account_address).permit(
      :name, 
      :contact,
      :address1,
      :address2,
      :city,
      :state,
      :country_id,
      :postal_code,
      :email,
      :phone,
      :fax,
      :comment,
      :status
    )
  end
end
