module UsersHelper
  def setup_user(user)
    user.wish ||= Wish.new(approved: false)
    user
  end
end
