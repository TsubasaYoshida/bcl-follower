class FollowersController < ApplicationController
  before_action :set_follower, only: [:show, :edit, :update, :destroy]

  def index
    @followers = Follower.all
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = Rails.application.credentials.twitter[:api_key]
      config.consumer_secret = Rails.application.credentials.twitter[:api_secret_key]
      config.access_token = Rails.application.credentials.twitter[:access_token]
      config.access_token_secret = Rails.application.credentials.twitter[:access_token_secret]
    end
    @count_toyama = client.user("T_birds").followers_count
    @count_niigata = client.user("Albi_BC_PR").followers_count
    @count_shinano = client.user("GrazieClub").followers_count
    @count_ishikawa = client.user("I_Million_Stars").followers_count
    @count_shiga = client.user("shigaunitedbc").followers_count
    @count_ibaraki = client.user("ibaraki_planets").followers_count
    @count_fukushima = client.user("F_REDHOPES").followers_count
    @count_saitama = client.user("musashi_bears").followers_count
    @count_tochigi = client.user("tochigi_gb").followers_count
    @count_gunma = client.user("kyumaraima").followers_count
    @count_kanagawa = client.user("k_futuredreams").followers_count
    @count_fukui = client.user("Fukui_Raptors").followers_count
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
