class WarehousesController < ApplicationController
  before_action :set_warehouse, only: [:show, :edit, :update, :destroy]
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
    respond_to do |format|
      format.html { render :edit }
      format.js
      format.json { render json: @warehouse, status: 201 }
    end
  end
  
  def update
    @warehouse.update(warehouse_params)
    respond_to do |format|
      format.html { redirect_to warehouse_path(@warehouse) }
      format.js
      format.json { render json: @warehouse, status: 201 }
    end
  end

  def destroy
    @warehouse.delete
    respond_to do |format|
      format.html { redirect_to :index }
      format.js
      format.json { render json: @warehouse, status: 201 }
    end
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
