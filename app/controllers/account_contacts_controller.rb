class AccountContactsController < ApplicationController

  def index
    @account_contacts = current_account.account_contacts.all
    respond_to do |format|
      format.html { render :index }
      format.js
      format.json { render json: @account_contacts, status: 201 }
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

  def destroy
    
  end

  private

  def set_account_contact
    
  end

  def account_contact_params
    
  end

end
