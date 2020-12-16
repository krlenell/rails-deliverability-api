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
require 'rails_helper'

RSpec.describe Report, type: :model do
  it {should validate_presence_of(:device_id)}
  it {should validate_presence_of(:sender)}
  it {should validate_presence_of(:message)}

  it {should belong_to(:device)}
end
