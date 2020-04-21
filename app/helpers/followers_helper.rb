module FollowersHelper
  def updown_quantity(follower)
    yesterday_time_range = follower.created_at.ago(1.day).all_day
    follower_yesterday = follower.team.followers.where(created_at: yesterday_time_range).first
    follower_yesterday ? follower.followers_count - follower_yesterday.followers_count : nil
  end

  def updown_quantity_last_ten_days(team)
    follower = team.followers.order(created_at: :desc).first
    ten_days_ago_time_range = follower.created_at.ago(10.day).all_day
    follower_ten_days_ago = team.followers.where(created_at: ten_days_ago_time_range).first
    follower_ten_days_ago ? follower.followers_count - follower_ten_days_ago.followers_count : nil
  end
end
