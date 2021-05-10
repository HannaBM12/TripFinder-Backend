class TripSerializer < ActiveModel::Serializer
  attributes :id, :attraction_name, :client_name, :date, :quantity, :total, :rating, :reviews


  def attraction_name
    self.object.attraction.name
  end

  def client_name
    self.object.client.name
  end

end