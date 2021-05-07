class Trip < ApplicationRecord
  belongs_to :client
  belongs_to :attraction
end
