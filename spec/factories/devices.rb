FactoryBot.define do
  factory :device do
    # phone_number Faker::PhoneNumber.cell_phone_in_e164
    phone_number {"+38919450060555"}
    #phone_number {Faker::PhoneNumber.cell_phone_in_e164}
    # carrier Faker::Books::Lovecraft.diety
    carrier {"ATT"}
  end
end
