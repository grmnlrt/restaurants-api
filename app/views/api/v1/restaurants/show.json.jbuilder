json.extract! @restaurant, :id, :name, :address
json.comments @restaurant.comments do |comment|
  json.extract! comment, :id, :content
end
# {
#   "id": 1,
#   "name": "mamma roma",
#   "address": "rue oberkampf",
#   "comments": [
#     {
#       "id": 1,
#       "content": "trop bon!"
#     },
#     {
#       "id": 2,
#       "content": "bof..."
#     }
#   ]
# }
