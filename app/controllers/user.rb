get '/signup' do
  erb :signup
end

post '/signup/success' do
  User.create(params[:user])

  redirect '/'
end

post '/signin' do

    if User.valid?(params[:email]) == true
      user = User.where(email: params[:email]).first
      if user.authenticate(params[:email], params[:password]) ==true
        redirect '/game'
      else
        redirect '/login_error'
      end
    else
      redirect '/login_error'
    end
end

get '/login_error' do
  erb :login_error
end
