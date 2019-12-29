namespace :twitter do
  desc "フォロワー数を取得する"
  task :get_followers_count => :environment do
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = Rails.application.credentials.twitter[:api_key]
      config.consumer_secret = Rails.application.credentials.twitter[:api_secret_key]
      config.access_token = Rails.application.credentials.twitter[:access_token]
      config.access_token_secret = Rails.application.credentials.twitter[:access_token_secret]
    end

    new_models = []
    new_models << Follower.new(
        team_id: 1,
        followers_count: client.user("T_birds").followers_count,
    )
    new_models << Follower.new(
        team_id: 11,
        followers_count: client.user("Albi_BC_PR").followers_count,
    )
    new_models << Follower.new(
        team_id: 21,
        followers_count: client.user("GrazieClub").followers_count,
    )
    new_models << Follower.new(
        team_id: 31,
        followers_count: client.user("I_Million_Stars").followers_count,
    )
    new_models << Follower.new(
        team_id: 41,
        followers_count: client.user("shigaunitedbc").followers_count,
    )
    new_models << Follower.new(
        team_id: 51,
        followers_count: client.user("ibaraki_planets").followers_count,
    )
    new_models << Follower.new(
        team_id: 61,
        followers_count: client.user("F_REDHOPES").followers_count,
    )
    new_models << Follower.new(
        team_id: 71,
        followers_count: client.user("musashi_bears").followers_count,
    )
    new_models << Follower.new(
        team_id: 81,
        followers_count: client.user("tochigi_gb").followers_count,
    )
    new_models << Follower.new(
        team_id: 91,
        followers_count: client.user("kyumaraima").followers_count,
    )
    new_models << Follower.new(
        team_id: 101,
        followers_count: client.user("k_futuredreams").followers_count,
    )
    new_models << Follower.new(
        team_id: 111,
        followers_count: client.user("Fukui_Raptors").followers_count,
    )
    Follower.import new_models
  end
end
