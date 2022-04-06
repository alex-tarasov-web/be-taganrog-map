class Medium < ApplicationRecord
  validates :content, :contentType, :mediumable_id, :mediumable_type, presence: true
  belongs_to :mediumable, polymorphic: true
end
