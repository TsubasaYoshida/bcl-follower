module FollowersHelper
  def updown_quantity(follower)
    yesterday_time_range = follower.created_at.ago(1.day).all_day
    follower_yesterday = follower.team.followers.where(created_at: yesterday_time_range).first
    follower_yesterday ? follower.followers_count - follower_yesterday.followers_count : nil
  end
end
