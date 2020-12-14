# == Schema Information
#
# Table name: devices
#
#  id           :bigint           not null, primary key
#  phone_number :text             not null
#  carrier      :text             not null
#  disabled_at  :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Device < ApplicationRecord
  validates :phone_number, presence: true
  validates :carrier, presence: true
end
