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
        followers_count: client.user(91309675).followers_count,
    )
    new_models << Follower.new(
        team_id: 11,
        followers_count: client.user(293296404).followers_count,
    )
    new_models << Follower.new(
        team_id: 21,
        followers_count: client.user(158186830).followers_count,
    )
    new_models << Follower.new(
        team_id: 31,
        followers_count: client.user(116145249).followers_count,
    )
    new_models << Follower.new(
        team_id: 41,
        followers_count: client.user(815466660614152192).followers_count,
    )
    new_models << Follower.new(
        team_id: 51,
        followers_count: client.user(809980415285071872).followers_count,
    )
    new_models << Follower.new(
        team_id: 61,
        followers_count: client.user(2765281836).followers_count,
    )
    new_models << Follower.new(
        team_id: 71,
        followers_count: client.user(820138975620829185).followers_count,
    )
    new_models << Follower.new(
        team_id: 81,
        followers_count: client.user(782766704203927554).followers_count,
    )
    new_models << Follower.new(
        team_id: 91,
        followers_count: client.user(588132075).followers_count,
    )
    new_models << Follower.new(
        team_id: 101,
        followers_count: client.user(1088013546661658624).followers_count,
    )
    new_models << Follower.new(
        team_id: 111,
        followers_count: client.user(1194902882874617856).followers_count,
    )
    Follower.import new_models
  end
end
