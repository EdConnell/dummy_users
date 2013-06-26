
get '/' do
  erb :index
end

post '/login' do
  unless params[:email].empty? || params[:password].empty?
    @user = User.find_by_email(params[:email]) || User.new
    if @user.password == params[:password]
      session[:user] = @user
      redirect '/home'
    else
      redirect '/bad_login'
    end
  else
    redirect '/bad_login'
  end  
end

get '/login' do
  erb :login
end

get '/home' do
  if session[:user]
    erb :home
  else
    redirect '/'
  end
end

post '/logout' do
  session[:user] = nil
  redirect '/' if session[:user] == nil
end

get '/signup' do
  erb :signup
end

post '/new_user' do
  @user = User.create(params[:user])
  session[:user] = @user
  unless session[:user].nil?
    redirect '/home'
  else
    redirect '/'
  end
end

get '/bad_login' do
  erb :bad_login
end
