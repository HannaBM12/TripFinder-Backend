class Client < ApplicationRecord
    has_many :trips
    has_many :attractions, through: :trips

end
