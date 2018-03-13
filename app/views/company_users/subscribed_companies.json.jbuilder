json.array! @companies do |company|
  json.id company.id
  json.name company.name
  json.turns company.turns do |turn|
    json.id turn.id
    json.codeletter turn.category.codeletter
    json.turn_number turn.turn_number
    json.status turn.status
  end
end