class SalesOrdersController < CompanyOrdersController

  def index
    @sales_orders = current_account.sales_orders.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @sales_orders, status: 201 }
    end
  end

  def new

  end

  def create
    
  end

  def show
    
  end

  def edit
    
  end

  def update
    
  end

  def delete

  end

  private

  def set_sales_order
    
  end

  def sales_order_params
    
  end

end
