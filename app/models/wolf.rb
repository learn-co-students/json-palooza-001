class Wolf < ActiveRecord::Base
  has_many :blood_samples, foreign_key: :wolf_id, class_name: 'WolfBloodSample'
end
