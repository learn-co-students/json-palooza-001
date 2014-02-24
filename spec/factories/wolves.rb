FactoryGirl.define do
  factory :wolf do
    name { Faker::Name.name }
    species { %w(Timber Mongolian North\ American Gray).sample }

    factory :sampled_wolf do
      after(:create) do |wolf|
        Random.rand(4).times do
          wolf.blood_samples.create(taken_at: Time.now)
        end
      end
    end
  end
end
