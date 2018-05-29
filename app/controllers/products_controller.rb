class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = current_account.products.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @products, status: 201 }
    end
  end

  def new
    
  end

  def create
    @product = current_account.products.build(product_params)
    @product.save
    respond_to do |format|
      format.html { redirect_to product_path(@product) }
      format.json { render json: @product, status: 201 }
    end
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @product, status: 201 }
    end
  end

  def edit
    respond_to do |format|
      format.html { render :edit }
      format.json { render json: @product, status: 201 }
    end
  end

  def update
    @product.update(product_params)
    respond_to do |format|
      format.html { redirect_to product_path(@product) }
      format.json { render json: @product, status: 201 }
    end
  end

  def destroy
    @product.delete
    respond_to do |format|
      format.html { redirect_to :index }
      format.json { render json: @product, status: 201 }
    end
  end

  private

  def set_product
    @product = current_account.products.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:sku, :name, :description, :unit_of_measure_id, :price)
  end

end
