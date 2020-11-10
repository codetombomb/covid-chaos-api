class Player < ApplicationRecord
    has_many :games
    validates :username, uniqueness: true, presence: true
    validates_length_of :username, maximum: 20, minimun: 5
end
