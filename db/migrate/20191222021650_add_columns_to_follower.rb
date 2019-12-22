class AddColumnsToFollower < ActiveRecord::Migration[6.0]
  def change
    add_column :followers, :team, :string
    add_column :followers, :followers_count, :integer
  end
end
