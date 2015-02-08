# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  dob             :date
#  gender          :string
#  activity_level  :string
#  weight          :integer
#  height          :integer
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string
#

class User < ActiveRecord::Base
  has_secure_password
  belongs_to :nutrition
  has_many :meals
end
