class MuseumSerializer < ActiveModel::Serializer
  attributes :id, :name, :mediaUrl, :isWide, :bgColor, :textColor, :onMapsLink, :museumOnlineLink
  has_many :media
end
