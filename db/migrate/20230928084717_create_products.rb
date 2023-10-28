class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.decimal :price, :precision => 8, :scale => 2


      t.timestamps
    end
  end
end

      # t.integer :quantity_in_stock
      # t.references :category, null: false, foreign_key: true
