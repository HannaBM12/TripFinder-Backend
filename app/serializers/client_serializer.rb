class ClientSerializer < ActiveModel::Serializer
    attributes :name, :age, :email, :id, :trips
    has_many :trips
  end
  