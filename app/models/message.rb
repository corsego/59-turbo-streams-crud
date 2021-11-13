class Message < ApplicationRecord
  validates :body, presence: true

  # after_create_commit { broadcast_prepend_to 'messages' }
  # after_update_commit { broadcast_replace_to 'messages' }
  # after_destroy_commit { broadcast_remove_to 'messages' }
end
