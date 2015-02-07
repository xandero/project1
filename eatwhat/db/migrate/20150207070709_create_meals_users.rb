class CreateMealsUsers < ActiveRecord::Migration
  def change
    create_table :meals_users do |t|
      t.integer :meal_id
      t.integer :user_id
    end
  end
end
