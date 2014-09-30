json.page @page
json.per_page @per_page
json.birds @birds do |bird|
  json.name bird.name
  json.species bird.species

  json.sightings bird.sightings do |sighting|
    json.sighted_at sighting.sighted_at.to_i
  end
end
