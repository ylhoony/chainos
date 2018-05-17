class PaymentOptionsController < ApplicationController

  def index
    @payment_options = PaymentOption.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @payment_options, status: 201 }
    end
  end

  def new
    @payment_option = PaymentOption.new
  end

  def create
    @payment_option = PaymentOption.new(payment_option_params)
    if @payment_option.save
      respond_to do |format|
        # format.html { redirect_to payment_option_path(@payment_option) }
        format.json { render json: @payment_option, status: 201 }
      end
    else
      respond_to do |format|
        # format.html { redirect_to payment_option_path(@payment_option) }
        # format.json { render json: @payment_option, status: 201 }
      end
    end
  end

  def edit
    
  end

  def update
    
  end

  private

  def payment_option_params
    params.require(:payment_option).permit(:name, :status)
  end

end
