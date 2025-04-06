json.extract! shipping_method, :id, :name, :delivery_estimate, :provider, :created_at, :updated_at
json.url shipping_method_url(shipping_method, format: :json)
