require 'sinatra'
require 'sass'

require './helpers/helpers.rb'

set :sass, :style => :compressed

get '/stylesheets/:filename.css' do
  content_type 'text/css', :charset => 'utf-8'
  filename = "#{params[:filename]}"
  render :sass, filename.to_sym, :views => './views/stylesheets'
end

get '/' do
  erb :index
end
