class PaymentOptionsController < ApplicationController
  before_action :set_payment_option, only: [:show, :edit, :update]
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
        format.json { render json: @payment_option, status: 201 }
      end
    else
      respond_to do |format|
        # format.html { redirect_to payment_option_path(@payment_option) }
        # format.json { render json: @payment_option, status: 201 }
      end
    end
  end
  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @payment_option, status: 201 }
    end
  end

  def edit
    respond_to do |format|
      format.html { render :edit }
      format.json { render json: @payment_option, status: 201 }
    end
  end

  def update
    @payment_option.update(payment_option_params)
    respond_to do |format|
      format.json { render json: @payment_option, status: 201 }
    end
  end

  private

  def set_payment_option
    @payment_option = PaymentOption.find(params[:id])
  end

  def payment_option_params
    params.require(:payment_option).permit(:name, :status)
  end

end
