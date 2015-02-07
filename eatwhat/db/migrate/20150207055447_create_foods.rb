class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :serving_size
      t.integer :quantity
      t.timestamps
    end
  end
end
