class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :meal_type
      t.date :meal_date
      t.integer :protein_guess
      t.integer :carb_guess
      t.integer :fat_guess
      t.integer :user_id
      t.timestamps
    end
  end
end
