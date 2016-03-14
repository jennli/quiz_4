json.array! @companies do |c|
  json.name c.name
  json.products c.products do |product|
    json.title   product.title
  end
end
