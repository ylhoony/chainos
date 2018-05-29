class CompanyAddressesController < ApplicationController

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
    
  end

  def show
    binding.pry
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def set_company_address
    
  end

  def company_address_params
    
  end

end
