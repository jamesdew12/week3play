require 'sinatra'
get '/' do
  'hello leeeeeeeeeeeooooon'
end
get '/secret' do
  'its not leon its james'
end

get '/random-cat' do
  @name = ["leon", "mouser", "dennis"].sample
  erb(:index)
end
get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
