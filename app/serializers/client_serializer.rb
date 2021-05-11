class ClientSerializer < ActiveModel::Serializer
    attributes :name, :age, :email, :id
  end
  