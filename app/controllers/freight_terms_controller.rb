class FreightTermsController < ApplicationController
  before_action :set_freight_term, only: [:show, :edit, :update, :destroy]

  def index
    @freight_terms = current_account.freight_terms.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @freight_terms, status: 201 }
    end
  end

  def new
    respond_to do |format|
      format.html { render :new }
      # format.json { render json: @freight_term, status: 201 }
    end
  end

  def create
    @freight_term = current_account.freight_terms.build(freight_term_params)
    @freight_term.save
    respond_to do |format|
      format.json { render json: @freight_term, status: 201 }
    end
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @freight_term, status: 201 }
    end
  end

  def edit
    respond_to do |format|
      format.html { render :edit }
      format.json { render json: @freight_term, status: 201 }
    end
  end

  def update
    
  end

  def destroy
    @freight_term.delete
    respond_to do |format|
      format.html { redirect_to :index }
      format.json { render json: @freight_term, status: 201 }
    end
  end

  private

  def set_freight_term
    @freight_term = current_account.freight_terms.find(params[:id])
  end

  def freight_term_params
    params.require(:freight_term).permit(:name, :status)
  end

end
