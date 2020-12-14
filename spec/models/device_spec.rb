require 'rails_helper'

RSpec.describe Device, type: :model do

  subject(:device) { FactoryBot.build(:device)}

  describe 'validations' do
    it { should validate_presence_of(:phone_number)}
    it { should validate_presence_of(:carrier)}
  end
end
