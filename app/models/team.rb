class Team < ApplicationRecord
  validates :name,
            :screen_name,
            :short_name,
            presence: true
end
