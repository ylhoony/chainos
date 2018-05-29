class CompanyAddressesController < ApplicationController
  before_action :set_company_address, only: [:edit, :update, :destroy]
  def index
    @company_addresses = CompanyAddress.where(company_id: params[:supplier_id]) if params[:supplier_id]
    @company_addresses = CompanyAddress.where(company_id: params[:customer_id]) if params[:customer_id]
    respond_to do |format|
      format.json { render json: @company_addresses, status: 201 }
    end
  end

  def new
    
  end

  def create
    @company_address = Supplier.find(params[:supplier_id]).company_addresses.build(company_address_params) if params[:supplier_id]
    @company_address = Customer.find(params[:customer_id]).company_addresses.build(company_address_params) if params[:customer_id]
    @company_address.save
    respond_to do |format|
      format.json { render json: @company_address, status: 201 }
    end
  end

  def show

  end

  def edit
    respond_to do |format|
      format.html { render :edit }
      format.json { render json: @company_address, status: 201 }
    end
  end

  def update
    @company_address.update(company_address_params)
    respond_to do |format|
      format.json { render json: @company_address, status: 201 }
    end
  end

  def destroy
    @company_address[0].delete
    respond_to do |format|
      format.json { render json: @company_address, status: 201 }
    end
  end

  private

  def set_company_address
    @company_address = Supplier.find(params[:supplier_id]).company_addresses.where(id: params[:id]) if params[:supplier_id]
    @company_address = Customer.find(params[:customer_id]).company_addresses.where(id: params[:id]) if params[:customer_id]
  end

  def company_address_params
    params.require(:company_address).permit(
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
