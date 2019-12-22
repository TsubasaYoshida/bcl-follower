class RemoveColumnsFromFollowers < ActiveRecord::Migration[6.0]
  def change

    remove_column :followers, :datetime, :datetime

    remove_column :followers, :tomaya, :integer

    remove_column :followers, :niigata, :integer

    remove_column :followers, :shinano, :integer

    remove_column :followers, :ishikawa, :integer

    remove_column :followers, :shiga, :integer

    remove_column :followers, :ibaraki, :integer

    remove_column :followers, :fukushima, :integer

    remove_column :followers, :saitama, :integer

    remove_column :followers, :tochigi, :integer

    remove_column :followers, :gunma, :integer

    remove_column :followers, :kanagawa, :integer

    remove_column :followers, :fukui, :integer
  end
end
