# == Schema Information
#
# Table name: reports
#
#  id         :uuid             not null, primary key
#  device_id  :uuid             not null
#  sender     :text             not null
#  message    :text             not null
#  created_at :datetime         not null
#
class Report < ApplicationRecord
  validates :device_id, :sender, :message, presence: true

  belongs_to :device
end
