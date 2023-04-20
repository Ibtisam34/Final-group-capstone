class Apponitment < ApplicationRecord
    belongs_to :user
    belongs_to :doctor

    validates :date, presence: true
end
