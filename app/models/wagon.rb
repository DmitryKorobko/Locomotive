class Wagon < ApplicationRecord
  validates :wagon_type, presence: true

  belongs_to :train
end
