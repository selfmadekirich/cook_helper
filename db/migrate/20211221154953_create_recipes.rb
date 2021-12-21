class CreateRecipes < ActiveRecord::Migration[6.1]
  def up
    create_table :recipes do |t|
      t.string :name
      t.text   :instructions
      t.string :meal_type , limit:2
      t.belongs_to :users,:ingredients
    end
  end

  def down
    drop_table :recipes
  end
end
