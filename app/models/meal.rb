# == Schema Information
#
# Table name: meals
#
#  id            :integer          not null, primary key
#  meal_type     :string
#  meal_date     :date
#  protein_guess :integer
#  carb_guess    :integer
#  fat_guess     :integer
#  user_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Meal < ActiveRecord::Base
  belongs_to :user
  has_many :foods
end
