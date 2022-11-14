class Add < ApplicationRecord
  scope :descending, -> { order("created_at DESC") }
  scope :ascending, -> { order("created_at ASC") }

  after_create_commit { broadcast_prepend_to "adds" }
  after_update_commit { broadcast_replace_to "adds" }
  after_destroy_commit { broadcast_remove_to "adds" }

  validates_presence_of :title, :description
  validates :title, length: { minimum: 3, maximum: 100 }
  validates :description, length: { minimum: 3, maximum: 2000 }

  has_rich_text :description
end
