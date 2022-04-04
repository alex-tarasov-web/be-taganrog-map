class Museum < ApplicationRecord
  validates :name, :bgColor, :isWide, :mediaUrl, :onMapsLink, :textColor, :onlineMuseumLink, presence: true

  has_many :medium, as: :mediumable
end
