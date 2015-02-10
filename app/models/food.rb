# == Schema Information
#
# Table name: foods
#
#  id             :integer          not null, primary key
#  name           :string
#  serving_size   :string
#  quantity       :float
#  meal_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#  carb_amount    :float
#  fat_amount     :float
#  protein_amount :float
#

class Food < ActiveRecord::Base
  belongs_to :meals
end
