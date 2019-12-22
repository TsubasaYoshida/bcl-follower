class FollowersController < ApplicationController
  before_action :set_follower, only: [:show, :edit, :update, :destroy]

  def index
    @followers_today = Follower.where(created_at: Time.now.all_day).order(followers_count: :desc)
    @followers_yesterday = Follower.where(created_at: 1.day.ago.all_day)

    if @followers_today.size < 1
      @followers_today = Follower.where(created_at: 1.day.ago.all_day).order(followers_count: :desc)
      @followers_yesterday = Follower.where(created_at: 2.day.ago.all_day)
    end
  end

  def show
  end

  def new
    @follower = Follower.new
  end

  def edit
  end

  def create
  end

  def update
    respond_to do |format|
      if @follower.update(follower_params)
        format.html {redirect_to @follower, notice: 'Follower was successfully updated.'}
        format.json {render :show, status: :ok, location: @follower}
      else
        format.html {render :edit}
        format.json {render json: @follower.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @follower.destroy
    respond_to do |format|
      format.html {redirect_to followers_url, notice: 'Follower was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private

  def set_follower
    @follower = Follower.find(params[:id])
  end

  def follower_params
    params.require(:follower).permit(
        :team,
        :followers_count
    )
  end
end
