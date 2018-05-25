class AccountAddressesController < ApplicationController
  before_action :set_account_address, only: [:show, :edit, :update, :destroy]

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
      format.html { render :show }
      format.js
      format.json { render json: @account_address, status: 201 }
    end
  end

  def edit
    respond_to do |format|
      format.html { render :edit }
      format.js
      format.json { render json: @account_address, status: 201 }
    end
  end

  def update
    @account_address.update(account_address_params)
    respond_to do |format|
      format.html { redirect_to account_address_path(@account_address) }
      format.js
      format.json { render json: @account_address, status: 201 }
    end
  end

  def destroy
    @account_address.delete
    respond_to do |format|
      format.html { redirect_to :index }
      format.js
      format.json { render json: @account_address, status: 201 }
    end
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
