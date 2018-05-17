class PaymentTermsController < ApplicationController

  def index
    @payment_terms = PaymentTerm.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @payment_terms, status: 201 }
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

  def set_payment_term
    
  end

  def payment_term_params
    
  end

end
