class WolfBloodSampleSerializer < ActiveModel::Serializer
  attributes :taken_at

  def taken_at
    object.taken_at.to_i
  end
end
