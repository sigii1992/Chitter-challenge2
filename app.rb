require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'
require './lib/peep'
require './lib/user'

class ChitterChallenge < Sinatra::Base
  enable :sessions, :method_override
  register Sinatra::Flash
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :'/index'
  end

  get '/peeps' do
    @user = User.find(session[:user_id])
    @peeps = Peep.all
    erb :'peeps/view'
  end

  get '/peeps/new' do
    erb :'peeps/new'
  end

  post '/peeps' do
    Peep.create(message: params[:message])
    redirect '/peeps'
  end

  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
    user = User.create(email: params[:email], password: params[:password])
    session[:user_id] = user.id
    redirect '/peeps'
  end

  get '/sessions/new' do
    erb :"sessions/new"
  end

  post '/sessions' do
    user = User.authenticate(email: params[:email], password: params[:password])

    if user
      session[:user_id] = user.id
      redirect('/peeps')
    else
      flash[:notice] = 'Incorrect email or password.'
      redirect('/sessions/new')
    end
  end

  get '/sessions/destroy' do
    session.clear
    flash[:notice] = 'You have logged out.'
    redirect('/')
  end
  
  post '/sessions/destroy' do
    session.clear
    flash[:notice] = 'You have logged out.'
    redirect('/')
  end

  run! if app_file == $0
end