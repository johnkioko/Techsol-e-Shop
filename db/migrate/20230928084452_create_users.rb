class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      # t.references :address, null: false, foreign_key: true

      t.timestamps
    end
    # add_index :users, :email
  end
end

# t.string :role