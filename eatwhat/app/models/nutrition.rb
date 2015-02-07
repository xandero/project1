# == Schema Information
#
# Table name: nutritions
#
#  id            :integer          not null, primary key
#  name          :string
#  daily_carb    :integer
#  daily_fat     :integer
#  daily_protein :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Nutrition < ActiveRecord::Base
  has_many :users
end
