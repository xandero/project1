class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :foods, :quantity, :real
  end
end
