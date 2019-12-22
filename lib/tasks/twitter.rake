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
        team: "富山",
        followers_count: client.user("T_birds").followers_count,
    )
    new_models << Follower.new(
        team: "新潟",
        followers_count: client.user("Albi_BC_PR").followers_count,
    )
    new_models << Follower.new(
        team: "信濃",
        followers_count: client.user("GrazieClub").followers_count,
    )
    new_models << Follower.new(
        team: "石川",
        followers_count: client.user("I_Million_Stars").followers_count,
    )
    new_models << Follower.new(
        team: "滋賀",
        followers_count: client.user("shigaunitedbc").followers_count,
    )
    new_models << Follower.new(
        team: "茨城",
        followers_count: client.user("ibaraki_planets").followers_count,
    )
    new_models << Follower.new(
        team: "福島",
        followers_count: client.user("F_REDHOPES").followers_count,
    )
    new_models << Follower.new(
        team: "埼玉",
        followers_count: client.user("musashi_bears").followers_count,
    )
    new_models << Follower.new(
        team: "栃木",
        followers_count: client.user("tochigi_gb").followers_count,
    )
    new_models << Follower.new(
        team: "群馬",
        followers_count: client.user("kyumaraima").followers_count,
    )
    new_models << Follower.new(
        team: "神奈川",
        followers_count: client.user("k_futuredreams").followers_count,
    )
    new_models << Follower.new(
        team: "福井",
        followers_count: client.user("Fukui_Raptors").followers_count,
    )
    Follower.import new_models
  end
end
