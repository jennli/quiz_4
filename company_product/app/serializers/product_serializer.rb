class ProductSerializer < ActiveModel::Serializer
  attributes :title

  has_one :company
end
