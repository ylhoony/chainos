class AccountContactsController < ApplicationController
  before_action :set_account_contact, only: [:show, :edit, :update, :destroy]
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
    @account_contact = current_account.account_contacts.build(account_contact_params)
    @account_contact.save
    respond_to do |format|
      format.html { redirect_to account_contact_path(@account_contact) }
      format.js
      format.json { render json: @account_contact, status: 201 }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.js
      format.json { render json: @account_contact, status: 201 }
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.js
      format.json { render json: @account_contact, status: 201 }
    end
  end

  def update
    @account_contact.update(account_contact_params)
    respond_to do |format|
      format.html {redirect_to account_contact_path(@account_contact) }
      format.js
      format.json { render json: @account_contact, status: 201 }
    end
  end

  def destroy
    @account_contact.delete
    respond_to do |format|
      format.html {redirect_to :index }
      format.js
      format.json { render json: @account_contact, status: 201 }
    end
  end

  private

  def set_account_contact
    @account_contact = current_account.account_contacts.find(params[:id])
  end

  def account_contact_params
    params.require(:account_contact).permit(
      :first_name, :last_name, :job_title,
      :email, :phone, :fax, :comment, :status
    )
  end
end
