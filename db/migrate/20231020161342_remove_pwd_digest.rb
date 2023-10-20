class RemovePwdDigest < ActiveRecord::Migration[7.0]
  def change
    remove_column :User, :password_digest
  end
end
