# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bird do
    name Faker::Name.name
    species %w(Blue\ Jay Egret Redtail \Hawk Canary).sample
  end

  after(:create) do |bird|
    Random.rand(4).times do
      bird.sightings.create(sighted_at: Time.now)
    end
  end
end
