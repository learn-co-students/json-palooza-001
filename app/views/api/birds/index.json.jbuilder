json.birds do 

  json.array! @birds do |bird|
    json.name bird.name
    json.species bird.species
    json.sightings bird.sightings do |sighting|
      json.sighted_at sighting.sighted_at.to_i
    end
  end
end

json.page @page.to_i
json.per_page @per_page.to_i
