class NewsExtractSerializer < ActiveModel::Serializer
  attributes :id, :MediumCategory_id, :title, :content, :created_at, :url
end
