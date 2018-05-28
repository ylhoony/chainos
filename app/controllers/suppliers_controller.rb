class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]

  def index
    @suppliers = current_account.suppliers.all
    respond_to do |format|
      format.html { render :index }
      format.js
      format.json { render json: @suppliers, status: 201 }
    end
  end

  def new
    
  end

  def create
    @supplier = current_account.suppliers.build(supplier_params)
    @supplier.save
    respond_to do |format|
      format.html { redirect_to supplier_path(@supplier) }
      format.js
      format.json { render json: @supplier, status: 201 }
    end
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.js
      format.json { render json: @supplier, status: 201 }
    end
  end

  def edit
    respond_to do |format|
      format.html { render :edit }
      format.js
      format.json { render json: @supplier, status: 201 }
    end
  end

  def update
    
  end

  def destroy
    @supplier.delete
    respond_to do |format|
      format.html { redirect_to :index }
      format.js
      format.json { render json: @supplier, status: 201 }
    end
  end

  private

  def set_supplier
    @supplier = current_account.suppliers.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:name, :comment, :warehouse_id, :payment_term_id, :currency_id, :status)
  end
end
