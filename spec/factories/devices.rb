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
    phone_number { Faker::PhoneNumber.cell_phone_in_e164 }
    carrier { Faker::Name.name  }
    disabled_at{ nil }

    factory :invalid_number do
      phone_number {12345}
    end
    factory :invalid_date do
      disabled_at{ "yesterday" }
    end
  end
end
