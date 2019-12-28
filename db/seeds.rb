# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
    ['富山GRNサンダーバーズ', 'T_birds', '富山'],
    ['新潟アルビレックスBC', 'Albi_BC_PR', '新潟'],
    ['信濃グランセローズ', 'GrazieClub', '信濃'],
    ['石川ミリオンスターズ', 'I_Million_Stars', '石川'],
    ['オセアン滋賀ユナイテッドBC', 'shigaunitedbc', '滋賀'],
    ['茨城アストロプラネッツ', 'ibaraki_planets', '茨城'],
    ['福島レッドホープス', 'F_REDHOPES', '福島'],
    ['埼玉武蔵ヒートベアーズ', 'musashi_bears', '埼玉'],
    ['栃木ゴールデンブレーブス', 'tochigi_gb', '栃木'],
    ['群馬ダイヤモンドペガサス', 'kyumaraima', '群馬'],
    ['神奈川フューチャードリームス', 'k_futuredreams', '神奈川'],
    ['福井ワイルドラプターズ', 'Fukui_Raptors', '福井']
].each do |name, screen_name, short_name|
  Team.create!(
      {name: name, screen_name: screen_name, short_name: short_name}
  )
end