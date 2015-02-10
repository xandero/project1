class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :serving_size
      t.float :quantity
      t.integer :meal_id
      t.timestamps
    end
  end
end
