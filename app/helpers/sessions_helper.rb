module SessionsHelper

  # Logs in the given user.
  def log_in(member)
    session[:member_id] = member.id
  end

  # Returns the current logged-in user (if any).
  def current_member
    @current_member ||= Member.find_by(id: session[:member_id])
  end
end