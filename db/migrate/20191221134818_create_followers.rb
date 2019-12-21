class CreateFollowers < ActiveRecord::Migration[6.0]
  def change
    create_table :followers do |t|
      t.datetime :datetime
      t.integer :tomaya
      t.integer :niigata
      t.integer :shinano
      t.integer :ishikawa
      t.integer :shiga
      t.integer :ibaraki
      t.integer :fukushima
      t.integer :saitama
      t.integer :tochigi
      t.integer :gunma
      t.integer :kanagawa
      t.integer :fukui

      t.timestamps
    end
  end
end
