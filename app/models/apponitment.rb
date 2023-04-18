class Appointment < ApplicationRecord
  validates :pickup_date, presence: true
  validates :return_date, presence: true

  belongs_to :user
  belongs_to :doctor
end
