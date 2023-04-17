class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates :pickup_date, :return_date, presence: true
end
