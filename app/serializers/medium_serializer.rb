class MediumSerializer < ActiveModel::Serializer
  attributes :id, :content, :contentType, :mediumable_id, :mediumable_type
end
