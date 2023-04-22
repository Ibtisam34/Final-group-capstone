class User < ApplicationRecord
    has_many :appointments, dependent: :destroy

    validates :name, presence: true
    validates :email, presence: true
end
