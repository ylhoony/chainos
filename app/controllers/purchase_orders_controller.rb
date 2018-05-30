class PurchaseOrdersController < CompanyOrdersController


  def index
    @purchase_orders = current_account.purchase_orders.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @purchase_orders, status: 201 }
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

  def set_purchase_order
    
  end

  def purchase_order_params
    
  end

end
