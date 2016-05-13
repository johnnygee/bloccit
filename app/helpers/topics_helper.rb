module TopicsHelper
  def user_is_authorized_for_edit?
        current_user && (current_user.admin? || current_user.moderator?)
  end

  def user_is_authorized_for_new?
        current_user && current_user.admin?
  end

  def user_is_moderator_or_admin?
        current_user && (current_user.admin? || current_user.moderator?)
  end

  def user_is_admin?
    current_user && current_user.admin?
  end
end
