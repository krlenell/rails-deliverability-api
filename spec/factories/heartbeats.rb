# == Schema Information
#
# Table name: heartbeats
#
#  id         :uuid             not null, primary key
#  device_id  :uuid             not null
#  created_at :datetime         not null
#
FactoryBot.define do
  factory :heartbeat do
    device { nil }
  end
end
