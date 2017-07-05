class WolfSerializer < ActiveModel::Serializer
  attributes :name, :species
  has_many :blood_samples
end
