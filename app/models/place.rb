class Place < ApplicationRecord
    paginates_per 5
    belongs_to :user
    validates :name, presence: true, length: { minimum: 3 }
    validates :description, presence: true
    validates :address, presence: true
    
    geocoded_by :address
    after_validation :geocode
end
