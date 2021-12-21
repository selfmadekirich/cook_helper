class CreateIngredients < ActiveRecord::Migration[6.1]
  def up
    create_table :ingredients do |t|
      t.string :name
      t.integer :amount
      t.string :meal_type , limit:2
      t.belongs_to :user,:recipes
    end
  end

  def down
    drop_table :ingredients
  end

end
