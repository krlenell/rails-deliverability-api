# == Schema Information
#
# Table name: heartbeats
#
#  id         :uuid             not null, primary key
#  device_id  :uuid             not null
#  created_at :datetime         not null
#
class Heartbeat < ApplicationRecord
  validates :device_id, presence: true

  belongs_to :device
end
