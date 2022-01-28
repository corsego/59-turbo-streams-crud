class Message < ApplicationRecord
  validates :body, presence: true, length: { in: 3..250 }

  scope :recent, -> { order(created_at: :desc) }

  # broadcasts
  # or
  # after_create_commit { broadcast_prepend_to 'messages' }
  # after_update_commit { broadcast_replace_to 'messages' }
  # after_destroy_commit { broadcast_remove_to 'messages' }
end
