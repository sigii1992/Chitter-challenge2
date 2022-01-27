require 'sinatra/base'
require 'sinatra/reloader'
require './lib/peep'

class ChitterChallenge < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :'/index'
  end

  get '/peeps' do
    @peeps = Peep.all
    erb :'peeps/view'
  end

  get '/peeps/new' do
    erb :'peeps/new'
  end

  post '/peeps' do
    p params
    Peep.create(message: params[:message])
    redirect '/peeps'
  end

  run! if app_file == $0
end