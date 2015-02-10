class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :gender
      t.string :activity_level
      t.integer :weight
      t.integer :height
      t.integer :nutrition_id
      t.string :password_digest
      t.timestamps
    end
  end
end
