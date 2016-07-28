get '/user/new' do
  erb :'user/new'
end

post '/user/new' do
  @user = User.create(username: params[:username], email: params[:email], password: params[:password])
  redirect '/'
end
