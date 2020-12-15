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


class Device < ApplicationRecord
  validates :phone_number, phone: true
  validates :phone_number, :carrier, presence: true

  validate :disabled_at_is_date?

  private

  def disabled_at_is_date?
    if disabled_at.is_a?(Date) || disabled_at.nil?
      return
    end
      errors.add(:disabled_at, "must be a date or nil")
  end
end
