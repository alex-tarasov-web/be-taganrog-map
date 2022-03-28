class MediumSerializer < ActiveModel::Serializer
  attributes :id, :name, :media_url, :type
  has_one :album
end
