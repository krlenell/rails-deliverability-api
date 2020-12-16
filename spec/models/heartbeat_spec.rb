# == Schema Information
#
# Table name: heartbeats
#
#  id         :uuid             not null, primary key
#  device_id  :uuid             not null
#  created_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Heartbeat, type: :model do
  it {should validate_presence_of(:device_id)}

  it {should belong_to(:device)}
end
