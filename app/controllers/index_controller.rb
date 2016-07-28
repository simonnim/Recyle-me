get '/' do
  @post = Post.all
  erb :index
end

get '/post/:id' do
  @post = Post.find(params[:id])
  # @comments = Comment.find_by(post_id: params[:id])
  @comments = Comment.where(post_id: @post.id)
  p params
  erb :'/post/show'
end
