class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :name, presence: true
    validates :age, numericality: { greater_than: 7, less_than: 19 }
    
    # { in 8..18 } wont work?
end
