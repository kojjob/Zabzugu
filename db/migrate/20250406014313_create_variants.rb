class CreateVariants < ActiveRecord::Migration[8.0]
  def change
    create_table :variants do |t|
      t.string :name
      t.decimal :price
      t.integer :stock_quantity
      t.string :sku
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
