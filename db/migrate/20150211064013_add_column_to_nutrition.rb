class AddColumnToNutrition < ActiveRecord::Migration
  def change
    add_column :nutritions, :description, :string
  end
end
