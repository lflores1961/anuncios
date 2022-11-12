class Add < ApplicationRecord
  scope :descending, -> { order("created_at DESC") }
  scope :ascending, -> { order("created_at ASC") }

  validates_presence_of :title, :description
end
