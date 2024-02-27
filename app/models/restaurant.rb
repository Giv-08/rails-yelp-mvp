class Restaurant < ApplicationRecord
  # relation of 2 models
  has_many :reviews

  validates :name, :address, :category, presence: true
  validates :category, inclusion: %w[chinese italian japanese french belgian]
end
