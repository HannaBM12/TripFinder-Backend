class Client < ApplicationRecord
    has_many :trips
    has_many :attractions, through: :trips
    has_secure_password

    validates :name, uniqueness: { case_sensitive: false}

end
