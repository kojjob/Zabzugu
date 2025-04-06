json.extract! address, :id, :user_id, :recipient_name, :street_address, :city, :region, :postal_code, :phone, :is_default, :created_at, :updated_at
json.url address_url(address, format: :json)
