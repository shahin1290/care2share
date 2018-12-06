class Campaign < ApplicationRecord
    validates_presence_of :title, :description, :amount_raised

    belongs_to :user
end
