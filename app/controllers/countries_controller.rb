class CountriesController < ApplicationController

  def index
    @countries = Country.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @countries, status: 201 }
    end
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      respond_to do |format|
        format.html { render :index }
        format.json { render json: @country, status: 201 }
      end
    else
      render :index
    end
  end

  def show
    
  end

  def update
    @country = Country.find(params[:id])
    if @country.update(country_params)
      respond_to do |format|
        format.html { render :index }
        format.json { render json: @country, status: 201 }
      end
    else
      render :index
    end
  end

  def destroy
    @country = Country.find(params[:id])
    if @country.delete
      respond_to do |format|
        format.html { render :index }
        format.json { render json: @country, status: 201 }
      end
    else
      render :index
    end    
  end

  private

  def country_params
    params.require(:country).permit(:name, :alpha_2_code, :alpha_3_code, :numeric_code, :status)
  end

end
