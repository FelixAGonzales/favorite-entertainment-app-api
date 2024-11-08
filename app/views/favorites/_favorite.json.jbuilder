json.id favorite.id
json.user_id favorite.user_id
json.item_id favorite.item_id
json.user favorite.user
# json.item favorite.item


if favorite.item
  json.item do
    json.id favorite.item.id
    json.name favorite.item.name
    json.image_url favorite.item.image_url
    json.description favorite.item.description
    json.category favorite.item.category
    json.created_at favorite.item.created_at
    json.updated_at favorite.item.updated_at
  end
end