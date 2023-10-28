class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      # t.references :order, null: false, foreign_key: true
      t.string :payment_method
      t.string :card_number
      t.string :expiration_date
      t.string :transaction_status

      t.timestamps
    end
  end
end
