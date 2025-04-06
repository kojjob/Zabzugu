class CreateInventoryAdjustments < ActiveRecord::Migration[8.0]
  def change
    create_table :inventory_adjustments do |t|
      t.references :product, null: false, foreign_key: true
      t.references :variant, null: false, foreign_key: true
      t.integer :quantity
      t.integer :previous_quantity
      t.integer :new_quantity
      t.integer :reason

      t.timestamps
    end
  end
end
