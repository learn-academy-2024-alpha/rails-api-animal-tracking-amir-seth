class Animal < ApplicationRecord
    has_many :sightings, dependent: :destroy
end


# has_many :sightings = animal can have multiple sightings 
# dependent: :destroy = destroys all the records (long, lat, date) with animal 