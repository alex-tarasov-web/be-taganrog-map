# frozen_string_literal: true

module Types
  class IndustryType < Types::BaseObject
    field :id, ID, null: false
    field :mediaUrl, String
    field :isWide, Boolean
    field :textColor, String
    field :onMapsLink, String
    field :bgColor, String
    field :name, String
    field :media, [Types::MediaType]
  end
end
