require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse

  end
  get '/friends' do
    @friends = ['Emily Wilding Davision', 'Harriet Tubman',
      'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth' ]
    erb :friends
  end

  post '/reverse' do
    puts params
  original_string = params["string"]
  @reversed_string = original_string.reverse

    erb :reversed
  end
end
