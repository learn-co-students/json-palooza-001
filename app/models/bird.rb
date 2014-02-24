class Bird < ActiveRecord::Base
  has_many :bird_sightings
end
