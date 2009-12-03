require 'rubygems'
require 'sinatra'
require 'haml'


before do
  headers 'Content-Type' => 'text/html; charset=utf-8'
end

get '/' do
  haml :app
end

post '/calculate' do
  #TODO
  "#{rand(10).to_i} minutes, #{rand(60).to_i} seconds"
end

