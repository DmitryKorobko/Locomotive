class Train < ApplicationRecord
  validates :number, presence: true

  has_many :carriages
  belongs_to :railway_station
  belongs_to :route
end
