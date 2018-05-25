class CustomersController < ApplicationController

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

  def set_customer
    
  end

  def customer_params
    
  end
end
