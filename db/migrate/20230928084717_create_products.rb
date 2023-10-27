class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :quantity_in_stock
      # t.references :category, null: false, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
