class AccountsController < ApplicationController

  def index
    @accounts = current_user.accounts.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @accounts, status: 201 }
    end
  end

  def new
    @account = Account.new
  end

  def create
    
  end

  def show
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

  private

  def account_params
    
  end

end
