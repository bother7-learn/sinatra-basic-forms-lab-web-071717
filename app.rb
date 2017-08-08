require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    doge = Puppy.new(params[:name], params[:breed], params[:age])
    @name = doge.name
    @breed = doge.breed
    @age = doge.age
    erb :display_puppy
  end

end
