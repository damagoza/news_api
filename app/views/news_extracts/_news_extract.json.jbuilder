json.extract! news_extract, :id, :MediumCategory_id, :title, :content, :created_at, :updated_at
json.url news_extract_url(news_extract, format: :json)