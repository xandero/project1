class AddMacrosToFood < ActiveRecord::Migration
  def change
    add_column :foods, :carb_amount, :float
    add_column :foods, :fat_amount, :float
    add_column :foods, :protein_amount, :float
  end
end
