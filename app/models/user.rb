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
#  nutrition_id    :integer
#  password_digest :string
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_secure_password
  belongs_to :nutrition
  has_many :meals

  def age
    Date.today.year - self.dob.year
  end

validates :name, :presence => true, :uniqueness => true

end
