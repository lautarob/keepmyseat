json.turn do
  json.id @turn.id
  json.user_id @turn.user_id
  json.user_first_name @turn.user.first_name
  json.user_last_name @turn.user.last_name
  json.company_id @turn.company_id
  json.category_id @turn.category_id
  json.codeletter @turn.category.codeletter
  json.turn_number @turn.turn_number
  json.status @turn.status
end