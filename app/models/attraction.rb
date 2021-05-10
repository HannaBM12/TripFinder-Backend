class Attraction < ApplicationRecord
  belongs_to :category
  has_many :trips
  has_many :clients, through: :trips
end
