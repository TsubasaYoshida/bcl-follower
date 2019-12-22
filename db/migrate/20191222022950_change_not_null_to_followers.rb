class ChangeNotNullToFollowers < ActiveRecord::Migration[6.0]
  def change
    change_column_null :followers, :team, false
    change_column_null :followers, :followers_count, false
  end
end
