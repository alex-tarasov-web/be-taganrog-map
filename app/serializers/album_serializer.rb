class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :media
end
