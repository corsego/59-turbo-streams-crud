module ApplicationHelper
  def set_title(message)
    message.new_record? ? 'Create' : 'Update'
  end
end
