class User < ApplicationRecord
  validates :passport, presence: true

  has_many :tickets
end
