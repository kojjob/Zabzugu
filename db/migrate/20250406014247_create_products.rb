class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :stock_quantity
      t.string :sku
      t.integer :status
      t.references :vendor, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.boolean :vat_exempt

      t.timestamps
    end
  end
end
