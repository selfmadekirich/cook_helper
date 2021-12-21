class CreateUsers < ActiveRecord::Migration[6.1]
  def up
    create_table :users do |t|
      t.string :username
      t.string :login
      t.string :passwordHash
    end
  end

  def down
    drop_table :users
  end

end
