class CountriesController < ApplicationController

  def index
    @countries = Country.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @countries, status: 201 }
    end
  end

  def new
    
  end

  def create
    
  end

  def show
    
  end

  def update
    
  end

  def delete
    
  end

  private

  def country_params
    # params.require(:country).permit(:name, alpha_2_code, alpha_3_code, numeric_code, :status)
  end

end
