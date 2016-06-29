require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    
    erb :'super_hero.html'
  end

  post '/teams' do 
    @team = Team.new(params[:team])
    params[:team][:heroes].each do |details|
      Superhero.new(details)
    end
    @heroes = Superhero.all
    erb :'team.html'
  end



end
