class Bird < ActiveRecord::Base
  has_many :sightings, foreign_key: :bird_id, class_name: 'BirdSighting'
end
