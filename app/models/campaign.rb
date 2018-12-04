class Campaign < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :amount_raised, presence: true
end
