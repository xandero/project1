# == Schema Information
#
# Table name: foods
#
#  id           :integer          not null, primary key
#  name         :string
#  serving_size :string
#  quantity     :float
#  meal_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Food < ActiveRecord::Base
  belongs_to :meals
end
