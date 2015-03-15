module PostsHelper
  def get_user_name(comment)
    if comment.user.profile.nil?
      comment.user.email
    else
      comment.user.profile.name
    end
  end

end
