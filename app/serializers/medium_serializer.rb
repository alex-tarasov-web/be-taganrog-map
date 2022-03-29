class MediumSerializer < ActiveModel::Serializer
  attributes :id, :content, :type
  has_one :album
end
