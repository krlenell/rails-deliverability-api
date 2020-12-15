class Report < ApplicationRecord
  validates :device_id, :sender, :message, presence: true

  belongs_to :device
end
