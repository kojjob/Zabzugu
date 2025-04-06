json.extract! product, :id, :name, :description, :price, :stock_quantity, :sku, :status, :vendor_id, :category_id, :vat_exempt, :created_at, :updated_at
json.url product_url(product, format: :json)
