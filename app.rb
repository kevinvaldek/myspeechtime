require 'rubygems'
require 'sinatra'
require 'lib/myspeechtime'
require 'haml'


before do
  headers 'Content-Type' => 'text/html; charset=utf-8'
end

get '/' do
  haml :app
end

post '/calculate' do
  MySpeechTime::Duration.new(params[:speech][:text]).pretty_time
end

