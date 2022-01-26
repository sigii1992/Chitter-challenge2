require 'sinatra/base'
require 'sinatra/reloader'

class ChitterChallenge < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Peeps'
  end

  run! if app_file == $0
end