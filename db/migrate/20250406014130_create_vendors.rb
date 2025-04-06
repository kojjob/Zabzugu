class CreateVendors < ActiveRecord::Migration[8.0]
  def change
    create_table :vendors do |t|
      t.references :user, null: false, foreign_key: true
      t.string :business_name
      t.text :description
      t.string :phone_number
      t.string :tax_id
      t.integer :status
      t.decimal :commission_rate

      t.timestamps
    end
  end
end
