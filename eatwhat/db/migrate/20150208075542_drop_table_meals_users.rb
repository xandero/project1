class DropTableMealsUsers < ActiveRecord::Migration
  def up
    drop_table :meals_users
  end
end
