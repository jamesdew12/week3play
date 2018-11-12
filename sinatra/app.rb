require 'sinatra'
get '/' do
  'hello leeeeeeeeeeeooooon'
end
get '/secret' do
  'its not leon its james'
end
get '/cat' do
  "<div style='border: 3px dashed red'>
     <img src='http://bit.ly/1eze8aE'>
   </div>"
end
