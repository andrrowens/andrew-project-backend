class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :phase, :description, :video, :github, :image1, :image2, :image3
end
