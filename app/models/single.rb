class Single < ApplicationRecord
  has_many :medium, as: :mediumable
end
