class Doctor < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy

  validates :name, presence: true
  validates :specialization, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, presence: true, length: { minimum: 10 }
end
