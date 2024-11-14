json.extract! restaurant, :id, :name, :address, :rating, :phone_number, :category, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
