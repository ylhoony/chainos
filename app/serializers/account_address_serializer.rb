class AccountAddressSerializer < ActiveModel::Serializer
  belongs_to :account
  belongs_to :country
  attributes :id, :name, :contact, :address1, :address2, 
             :city, :state, :postal_code, :email, :phone,
             :fax, :comment, :status
end
