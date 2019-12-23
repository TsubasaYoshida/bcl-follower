class FollowersController < ApplicationController
  def index
    @followers_today = Follower.where(created_at: Time.now.all_day).order(followers_count: :desc)
    @followers_yesterday = Follower.where(created_at: 1.day.ago.all_day)

    if @followers_today.size < 1
      @followers_today = Follower.where(created_at: 1.day.ago.all_day).order(followers_count: :desc)
      @followers_yesterday = Follower.where(created_at: 2.day.ago.all_day)
    end
  end
end
