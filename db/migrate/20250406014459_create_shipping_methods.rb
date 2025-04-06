class CreateShippingMethods < ActiveRecord::Migration[8.0]
  def change
    create_table :shipping_methods do |t|
      t.string :name
      t.string :delivery_estimate
      t.integer :provider

      t.timestamps
    end
  end
end
