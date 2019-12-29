class Team < ApplicationRecord
  has_many :followers
  validates :name,
            :screen_name,
            :short_name,
            presence: true
end
