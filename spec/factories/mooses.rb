# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :moose do
    name { Faker::Name.name }
    variety { %w(North\ American Peruvian North\ Umbrian Andelucian).sample }
    coloration { %w(perriwinkle brown chocolate cream).sample }
  end
end
