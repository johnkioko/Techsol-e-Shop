class CreateShipments < ActiveRecord::Migration[7.0]
  def change
    create_table :shipments do |t|
      t.references :order, null: false, foreign_key: true
      t.string :tracking_number
      t.date :delivery_date
      t.string :status

      t.timestamps
    end
  end
end
