class MuseumSerializer < ActiveModel::Serializer
  attributes :id, :name, :mediaUrl, :isWide, :bgColor, :textColor, :onMapsLink, :onlineMuseumLink
  # has_many :media, as: :mediumable
end
