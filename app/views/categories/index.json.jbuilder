json.array! @categories do |category|
  json.id category.id
  json.name category.name
  json.codeletter category.codeletter
end