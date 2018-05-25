class AccountContactSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :job_title,
             :email, :phone, :fax, :comment, :status
end
