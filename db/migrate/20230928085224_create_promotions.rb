class CreatePromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :promotions do |t|
      t.string :code
      t.decimal :discount_percentage
      t.date :valid_from
      t.date :valid_until

      t.timestamps
    end
  end
end
