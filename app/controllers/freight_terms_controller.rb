class FreightTermsController < ApplicationController
  before_action :set_freight_term, only: [:show, :edit, :update, :delete]
  
  def index
    @freight_terms = current_account.freight_terms.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @freight_terms, status: 201 }
    end
  end

  def new
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
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def set_freight_term
    @freight_term = current_account.freight_terms.find(params[:id])
  end

  def freight_term_params
    params.require(:freight_term).permit(:name, :status)
  end

end
