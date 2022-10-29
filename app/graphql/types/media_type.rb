# frozen_string_literal: true

module Types
  class MediaType < Types::BaseObject
    field id, ID, null: false
    field :content, String, null: false
    field :contentType, String, null: false
    field :mediumable_id, Integer, null: false
    field :mediumable_type, String, null: false
    field :collection, Types::AlbumType,Types::MuseumType, Types::IndustryType
  end
end
