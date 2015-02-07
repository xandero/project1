class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :type
      t.date :meal_date
      t.integer :protein_guess
      t.integer :carb_guess
      t.integer :fat_guess
      t.timestamps
    end
  end
end
