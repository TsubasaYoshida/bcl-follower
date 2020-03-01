class TeamsController < ApplicationController

  PER = 10

  def index
    @followers_today = Follower.where(created_at: Time.now.all_day).where.not(team_id: 121).order(followers_count: :desc)
    @followers_today += Follower.where(created_at: Time.now.all_day).where(team_id: 121)
    @followers_yesterday = Follower.where(created_at: 1.day.ago.all_day)

    if @followers_today.size < 1
      @followers_today = Follower.where(created_at: 1.day.ago.all_day).where.not(team_id: 121).order(followers_count: :desc)
      @followers_today += Follower.where(created_at: 1.day.ago.all_day).where(team_id: 121)
      @followers_yesterday = Follower.where(created_at: 2.day.ago.all_day)
    end
  end

  def show
    @team = Team.find(params[:id])
    @followers = @team.followers.page(params[:page]).per(PER).order(created_at: :desc)
  end

end
