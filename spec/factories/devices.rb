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
FactoryBot.define do
  factory :device do
    #phone_number { "MyText"
    #carrier { "MyText" }
    #disabled_at { "2020-12-13 21:16:59" }
    phone_number { Faker::PhoneNumber.cell_phone_in_e164 }
    carrier { Faker::Name.name  }
    disabled_at{ nil }
  end
end
