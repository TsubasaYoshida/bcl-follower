class RemoveTeamFromFollowers < ActiveRecord::Migration[6.0]
  def change

    remove_column :followers, :team, :string
  end
end
