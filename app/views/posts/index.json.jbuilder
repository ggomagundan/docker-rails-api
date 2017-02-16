# json.array! @posts, partial: 'posts/post', as: :post

json.data do |json|
  json.array! @posts do |post|
      json.extract! post, :id, :title
      json.created_at l(post.created_at, format: :short) 
      json.url post_url(post, format: :json)
  end
end
json.is_end @posts.last_page?
json.next_page path_to_next_page(@posts)
json.prev_page path_to_prev_page(@posts)
