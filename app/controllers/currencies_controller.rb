class CurrenciesController < ApplicationController

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
    @currency = Currency.find(params[:id])
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
    @currency = Currency.find(params[:id])
    if @currency.delete
      respond_to do |format|
        format.html { render :index }
        format.json { render json: @currency, status: 201 }
      end
    else
      render :index
    end    
  end

  private

  def currency_params
    params.require(:currency).permit(:name, :alpha_3_code, :numeric_code, :status)
  end  

end
