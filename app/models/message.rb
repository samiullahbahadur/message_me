class Message < ApplicationRecord
    belogns_to :user
    validates :body, presence: true
end
