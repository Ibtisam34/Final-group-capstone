class Doctor < ApplicationRecord
  validates :name, presence: true
  validates :specialization, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true, length: { minimum: 10 }
  validates :image, presence: true
  validates :availability, presence: true

  belongs_to :user
  has_many :appointments
end
