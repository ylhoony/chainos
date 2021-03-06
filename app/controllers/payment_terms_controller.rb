class PaymentTermsController < ApplicationController
  before_action :set_payment_term, only: [:show, :edit, :update, :destroy]

  def index
    @payment_terms = current_account.payment_terms.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @payment_terms, status: 201 }
    end
  end

  def new
  end

  def create
    @payment_term = PaymentTerm.new(payment_term_params)
    @payment_term.save
    respond_to do |format|
      format.json { render json: @payment_term, status: 201 }
    end
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @payment_term, status: 201 }
    end
  end

  def edit
    respond_to do |format|
      format.html { render :edit }
      format.json { render json: @payment_term, status: 201 }
    end
  end

  def update
    @payment_term.update(payment_term_params)
    respond_to do |format|
      format.json { render json: @payment_term, status: 201 }
    end
  end

  def destroy
    @payment_term.delete
    respond_to do |format|
      format.html { redirect_to :index }
      format.json { render json: @payment_term, status: 201 }
    end
  end

  def active
    @payment_terms = PaymentTerm.active_payment_terms(current_account)
    respond_to do |format|
      format.json { render json: @payment_terms, status: 201 }
    end
  end

  private

  def set_payment_term
    @payment_term = current_account.payment_terms.find(params[:id])
  end

  def payment_term_params
    params.require(:payment_term).permit(:account_id, :name, :days, :payment_option_id, :trade_credit_rate, :trade_credit_days, :status)
  end

end
