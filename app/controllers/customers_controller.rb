class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = current_account.customers.all
    respond_to do |format|
      format.html { render :index }
      format.js
      format.json { render json: @customers, status: 201 }
    end
  end

  def new
    
  end

  def create
    @customer = current_account.customers.build(customer_params)
    @customer.save
    respond_to do |format|
      format.html { redirect_to customer_path(@customer) }
      format.js
      format.json { render json: @customer, status: 201 }
    end
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.js
      format.json { render json: @customer, status: 201 }
    end
  end

  def edit
    respond_to do |format|
      format.html { render :edit }
      format.js
      format.json { render json: @customer, status: 201 }
    end
  end

  def update
    
  end

  def destroy
    @customer.delete
    respond_to do |format|
      format.html { redirect_to :index }
      format.js
      format.json { render json: @customer, status: 201 }
    end
  end

  private

  def set_customer
    @customer = current_account.customers.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :comment, :warehouse_id, :payment_term_id, :currency_id, :status)
  end
end
