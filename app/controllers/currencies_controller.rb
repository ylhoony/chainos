class CurrenciesController < ApplicationController
  before_action :set_currency, only: [:show, :edit, :update, :destroy]
  
  def index
    @currencies = Currency.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @currencies, status: 201 }
    end
  end

  def new
    @currency = Currency.new
  end

  def create
    @currency = Currency.new(currency_params)
    if @currency.save
      respond_to do |format|
        format.html { render :index }
        format.json { render json: @currency, status: 201 }
      end
    else
      render :index
    end
  end

  def show
    
  end

  def update
    if @currency.update(currency_params)
      respond_to do |format|
        format.html { render :index }
        format.json { render json: @currency, status: 201 }
      end
    else
      render :index
    end
  end

  def destroy
    if @currency.delete
      respond_to do |format|
        format.html { render :index }
        format.json { render json: @currency, status: 201 }
      end
    else
      render :index
    end    
  end

  def active
    @currencies = Currency.active_currencies
    respond_to do |format|
      format.json { render json: @currencies, status: 201 }
    end
  end

  private

  def set_currency
    @currency = Currency.find(params[:id])
  end

  def currency_params
    params.require(:currency).permit(:name, :alpha_3_code, :numeric_code, :status)
  end  

end
