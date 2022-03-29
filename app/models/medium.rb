class Medium < ApplicationRecord
  belongs_to :album
  belongs_to :museum
  belongs_to :industry
end
