module UsersHelper
  def setup_user(user)
    user.wish ||= Wish.new
    user
  end
end
