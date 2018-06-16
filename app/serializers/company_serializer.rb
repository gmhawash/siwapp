class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :tax_id, :currency, :address, :email, :url, :email_body, :email_subject, :phone
end
