class AddTeamIdToFollowers < ActiveRecord::Migration[6.0]
  def change
    add_reference :followers, :team, null: false, foreign_key: true
  end
end
