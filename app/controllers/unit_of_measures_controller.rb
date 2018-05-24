class UnitOfMeasuresController < ApplicationController
  before_action :set_unit_of_measure, only: [:show, :edit, :update, :destory]

  def index
    @unit_of_measures = current_account.unit_of_measures.all
    respond_to do |format|
      format.html { render :index } 
      format.json { render json: @unit_of_measures, status: 201 }
    end
  end

  def new
  end

  def create
    @unit_of_measure = current_account.unit_of_measures.build(unit_of_measure_params)
    @unit_of_measure.save
    respond_to do |format|
      format.json { render json: @unit_of_measure, status: 201 }
    end
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @unit_of_measure, status: 201 }
    end
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def set_unit_of_measure
    @unit_of_measure = current_account.unit_of_measures.find(params[:id])
  end

  def unit_of_measure_params
    params.require(:unit_of_measure).permit(:name, :status)
  end
end
