module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :albums, [Types::AlbumType],null: false, description: 'Return all albums'

    def albums
      albums.all
    end

    field :museums, [Types::MuseumType],null: false, description: 'Return all museums'

    def museums
      museums.all
    end

    field :industries, [Types::IndustryType],null: false, description: 'Return all industries'

    def industries
      industries.all
    end

    field :industries, [Types::IndustryType],null: false, description: 'Return all industries'

    def media
      media
    end
  end
end
