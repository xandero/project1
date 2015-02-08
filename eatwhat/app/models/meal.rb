# == Schema Information
#
# Table name: meals
#
#  id            :integer          not null, primary key
#  type          :string
#  meal_date     :date
#  protein_guess :integer
#  carb_guess    :integer
#  fat_guess     :integer
#  created_at    :datetime
#  updated_at    :datetime
#  user_id       :integer
#

class Meal < ActiveRecord::Base
  belongs_to :user
  has_many :foods
end
