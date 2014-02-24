FactoryGirl.define do
  factory :fox do
    name Faker::Name.name
    variety %w(Indo-Eurasion Canadian Arctic).sample
    coloration %w(orange red brown).sample
    # http://www.youtube.com/watch?v=jofNR_WkoCE
    saying %w(dingdingdingding WOWPOWPOWPOWPOW aroOoOoOo).sample
  end
end
