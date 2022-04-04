class Industry < ApplicationRecord
  validates :name, :bgColor, :isWide, :mediaUrl, :onMapsLink, :textColor, presence: true

  has_many :medium, as: :mediumable
end

