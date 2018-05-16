class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :employees
  has_many :accounts, through: :employees

  def current_account=(account)
    self.update(current_account_id: account.id)
  end

  def current_account
    Account.find(self.current_account_id) unless current_company_id.nil?
  end

end
