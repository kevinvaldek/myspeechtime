require 'rubygems'
require 'sinatra'
require 'haml'


before do
  headers 'Content-Type' => 'text/html; charset=utf-8'
end

get '/' do
  haml :app
end

