class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :products, :likes

end
