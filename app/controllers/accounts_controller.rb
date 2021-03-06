class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  def index
    @accounts = current_user.accounts.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @accounts, status: 201 }
    end
  end

  def new
  end

  def create
    @account = current_user.accounts.build(account_params)
    if  @account.save
      @account.employees.create(user_id: current_user.id, account_id: @account.id)
      current_user.current_account = @account
    end
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @account, status: 201 }
    end
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @account, status: 201 }
    end
  end

  def edit

  end

  def update

  end

  def destroy
    
  end

  private

  def set_account
    @account = current_user.accounts.find_by(id: params[:id])
  end

  def account_params
    params.require(:account).permit(:name, :country_id, :currency_id, :status)
  end

end
