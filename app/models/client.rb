class Client < ApplicationRecord
    has_many :trips
    has_many :attractions, through: :trips
    has_secure_password

    validates :username, uniqueness: { case_sensitive: false}

end
