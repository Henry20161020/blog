json.extract! article, :id, :title, :body, :create_date, :tag, :created_at, :updated_at
json.url article_url(article, format: :json)
