json.array! @companies do |c|
  json.name c.name
  json.products c.products do |products|
    json.title   products.title
  end
end
