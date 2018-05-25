class WarehousesController < ApplicationController

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

  def set_warehouse
    
  end

  def warehouse_params
    
  end

end
