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


class Device < ApplicationRecord
  validates :phone_number, phone: true
  validates :phone_number, :carrier, presence: true

  validate :disabled_at_is_date?

  has_many :heartbeat
  has_many :report

  private

  def disabled_at_is_date?
    if disabled_at.is_a?(Date) || disabled_at.nil?
      return
    end
      #errors.add(:disabled_at, "must be a date or nil")
    errors[:disabled_at] << "must be a date or nil"
  end
end
