class Device < ApplicationRecord
  validates :phone_number, presence: true
  validates :carrier, presence: true

end
