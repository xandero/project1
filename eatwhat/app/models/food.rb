# == Schema Information
#
# Table name: foods
#
#  id           :integer          not null, primary key
#  name         :string
#  serving_size :string
#  quantity     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Food < ActiveRecord::Base
  has_and_belongs_to_many :meals
end
