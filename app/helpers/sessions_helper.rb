helpers do

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  def login(user)
    session[:id] = user.id
  end

  def logout
    session[:id] = nil
  end

end
