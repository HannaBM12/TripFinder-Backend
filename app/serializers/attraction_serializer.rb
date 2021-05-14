class AttractionSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :location, :price, :category, :video


  def category
    self.object.category.name
  end

end
