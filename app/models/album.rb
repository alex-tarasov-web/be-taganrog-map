class Album < ApplicationRecord
  validates :name, :bgColor, :mediaUrl, :onMapsLink, :textColor, presence: true
  validates :isWide, inclusion: { in: [ true, false ] }

  has_many :medium, as: :mediumable
end
