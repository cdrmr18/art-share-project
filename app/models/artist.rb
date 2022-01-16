class Artist < ApplicationRecord
    validates :username, presence: true
end
