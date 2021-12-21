class CreateMeasures < ActiveRecord::Migration[6.1]
  def up
    create_table :measures do |t|
      t.string :meas_name , null:false
      t.integer :grams, null:false
      t.string :meas_role , null:false
      t.belongs_to :user
    end
  end

  def down
    drop_table :measures
  end
end
