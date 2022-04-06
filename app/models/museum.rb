class Museum < ApplicationRecord
  validates :name, :bgColor, :mediaUrl, :onMapsLink, :textColor, :onlineMuseumLink, presence: true
  validates :isWide, inclusion: { in: [ true, false ] }

  has_many :medium, as: :mediumable
end
