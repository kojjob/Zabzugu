class CreateAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :recipient_name
      t.string :street_address
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :phone
      t.boolean :is_default

      t.timestamps
    end
  end
end
