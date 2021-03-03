module ApplicationHelper

  def readable_time(time)
    time.strftime("%b %d, %I:%M %p")
  end
 
  def author_of(record)
    user_signed_in? && current_user.id === record.user_id
  end

  def admin?
    user_signed_in? && current_user.is_admin?
  end
end
