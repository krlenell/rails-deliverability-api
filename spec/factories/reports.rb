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
FactoryBot.define do
  factory :report do
    device { nil }
    sender { "MyText" }
    message { "MyText" }
  end
end
