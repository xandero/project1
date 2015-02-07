class CreateNutritions < ActiveRecord::Migration
  def change
    create_table :nutritions do |t|
      t.string :name
      t.integer :daily_carb
      t.integer :daily_fat
      t.integer :daily_protein
      t.timestamps
    end
  end
end
