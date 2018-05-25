class WarehousesController < ApplicationController
  before_action :set_warehouse
  def index
    @warehouses = current_account.warehouses.all
    respond_to do |format|
      format.html
      format.js
      format.json { render json: @warehouses, status: 201 }
    end
  end

  def new
    
  end

  def create
    @warehouse = current_account.warehouses.build(warehouse_params)
    @warehouse.save
    respond_to do |format|
      format.html { redirect_to warehouse_path(@warehouse) }
      format.js
      format.json { render json: @warehouse, status: 201 }
    end
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.js
      format.json { render json: @warehouse, status: 201 }
    end
  end

  def edit
    
  end
  
  def update
    
  end

  def destroy
    
  end

  private

  def set_warehouse
    @warehouse = current_account.warehouses.find(params[:id])
  end

  def warehouse_params
    params.require(:warehouse).permit(
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
      :status
    )
  end
end
