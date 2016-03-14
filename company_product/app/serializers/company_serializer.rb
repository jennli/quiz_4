class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :products, :likes

  def products
    object.products.all.map do |p|
      p.title
    end
  end
end
