class CompanyAddressSerializer < ActiveModel::Serializer
  belongs_to :country
  attributes :id, :company_id, :name,
             :contact, :address1, :address2,
             :city, :state, :postal_code,
             :email, :phone, :fax, :comment, :status
end
