class CreateCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.references :parent, null: true, foreign_key: { to_table: :categories }

      t.timestamps
    end
  end
end
