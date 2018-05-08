class NavigationsController < ApplicationController
  
  def index
    # Entry Point to redirect to the right page
    if user_signed_in?
      redirect_to accounts_path
    else
      redirect_to new_user_session_path
    end
  end

  def dashboard
    
  end

  def demand
    
  end

  def supply
    
  end

  def product
    
  end

  def warehouse
    
  end

  def logistics
    
  end

  def report
    
  end

  def setting
    
  end

end
