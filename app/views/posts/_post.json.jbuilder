json.extract! post, :id, :title, :body, :view_count
json.created_at l(post.created_at, format: :short)
json.updated_at l(post.updated_at, format: :short)
json.url post_url(post, format: :json)
