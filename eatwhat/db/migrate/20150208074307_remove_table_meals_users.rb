class RemoveTableMealsUsers < ActiveRecord::Migration
  def change
    remove_table :meals_users
  end
end
