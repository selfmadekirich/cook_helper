class UpdateUser < ActiveRecord::Migration[6.1]
  def up
      rename_column :users, :passwordHash , :password_digest
  end

  def down
    rename_column :users, :password_digest , :passwordHash
  end

end
