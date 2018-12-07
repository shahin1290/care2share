class Campaign < ApplicationRecord
    enum status: { 'Waiting for an aprroval': 0, approved: 1, rejected:2 }
    validates_presence_of :title, :description, :amount_raised

    belongs_to :user
end
