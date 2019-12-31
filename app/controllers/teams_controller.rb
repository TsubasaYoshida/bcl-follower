class TeamsController < ApplicationController

  def index
    @followers_today = Follower.where(created_at: Time.now.all_day).order(followers_count: :desc)
    @followers_yesterday = Follower.where(created_at: 1.day.ago.all_day)

    if @followers_today.size < 1
      @followers_today = Follower.where(created_at: 1.day.ago.all_day).order(followers_count: :desc)
      @followers_yesterday = Follower.where(created_at: 2.day.ago.all_day)
    end
  end

  def show
    @team = Team.find(params[:id])
    # @followers = @team.followers.page(params[:page]).per(3).order(created_at: :desc)
    @followers = @team.followers.order(created_at: :desc)
  end

end
