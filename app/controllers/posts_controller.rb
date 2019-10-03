class PostsController < ApplicationController
  def index
    url = 'http://jsonplaceholder.typicode.com/posts'
    post_serialized = open(url).read
    @posts = JSON.parse(post_serialized)

    if params[:query].present?
      @posts = @posts.select do |post|
        post['title'].downcase.include? params['query'].downcase
      end
    end
  end
end
