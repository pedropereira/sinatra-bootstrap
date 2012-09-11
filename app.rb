require 'compass'
require 'sinatra'

require './helpers/helpers.rb'

configure do
  # set sinatra's variables
  set :app_file, __FILE__
  set :root, File.dirname(__FILE__)
  set :views, 'views'
  set :public_folder, 'public'

  Compass.add_project_configuration 'config/compass.rb'
end

get '/stylesheets/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :"stylesheets/#{params[:name]}", Compass.sass_engine_options
end

get '/' do
  erb :index
end
