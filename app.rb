require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    new_string = params[:string]
    @reversed_string = new_string.reverse
    erb :reversed

  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end