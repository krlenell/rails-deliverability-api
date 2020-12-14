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
require 'rails_helper'

RSpec.describe Device, type: :model do

  subject(:device) {FactoryBot.build(:device)}

  pending "add some examples to (or delete) #{__FILE__}"
  describe 'validations' do
    it {should validate_presence_of(:phone_number)}
    it {should validate_presence_of(:carrier)}
  end

end