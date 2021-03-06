# == Schema Information
#
# Table name: devices
#
#  id           :uuid             not null, primary key
#  phone_number :text             not null
#  carrier      :text             not null
#  disabled_at  :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'rails_helper'

RSpec.describe Device, type: :model do

  subject(:device) {FactoryBot.build(:device)}
  describe 'validations' do
    it {should validate_presence_of(:phone_number)}
    it {should validate_presence_of(:carrier)}



    # it 'should validate disabled_at is either datetime or nil' do
    #   invalid_date = FactoryBot.build(:invalid_date)
    #   invalid_date.valid?
#↪ following line is deprecated, figure out how to fix
    #   expect(invalid_date.errors[:disabled_at]).to eq(["must be a date or nil"])
    # end
  end

  describe 'associations' do
    it {should have_many(:heartbeats)}
    it {should have_many(:reports)}
  end

end
