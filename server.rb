require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  erb :index
end

get '/gallery' do
  redirect to('/portfolio')
end

get '/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['sleep', 'eat', 'lift', 'golf', 'read', 'coffee']
  erb :about_me
end

get '/favorites' do
  @fav_links = ['http://www.nba.com', 'http://www.nfl.com']
  erb :favorites
end
