class PaymentTermsController < ApplicationController

  def index
    @payment_terms = current_account.payment_terms.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @payment_terms, status: 201 }
    end
  end

  def new
    @payment_term = PaymentTem.new
  end

  def create
    
  end

  def show
    @payment_term = current_account.payment_terms.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @payment_term, status: 201 }
    end
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def set_payment_term
    @payment_term = current_account.payment_terms.find(params[:id])
  end

  def payment_term_params
    
  end

end
