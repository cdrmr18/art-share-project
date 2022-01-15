class Artist < ApplicationRecord
    validates :name, :email, presence: true
end
