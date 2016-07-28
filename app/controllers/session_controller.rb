get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions/new' do
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    login(@user)
    redirect '/'
  else
    @error = "YOU TYPED YOUR STUFF WRONG"
    erb :'sessions/new'
  end
end

get '/sessions/logout' do
  logout
  redirect '/'
end
