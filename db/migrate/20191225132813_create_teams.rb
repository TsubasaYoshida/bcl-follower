class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.string :screen_name, null: false
      t.string :short_name, null: false

      t.timestamps
    end
  end
end
