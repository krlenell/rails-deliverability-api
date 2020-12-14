class Device < ApplicationRecord
  validates :phone_number, presence: true #, phone: true
  validates :carrier, presence: true
  validate :check_valid

  # def check_valid
  #   error[:phone_number] << "needs valid e164 number" if phone.invalid?
  # end

end
