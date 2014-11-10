# encoding: UTF-8
require 'rubygems'
require 'sinatra'
require 'data_mapper' # ORM
require 'Haml' # Templates
require 'rack-flash'
require 'sinatra/redirect_with_flash'
require "#{Dir.pwd}/models/models.rb"

# CONFIGS
# Change public directory
# set :public_folder, File.dirname(__FILE__) + '/static'
# Change views directory
# set :views, settings.root + '/templates'

enable :sessions
use Rack::Flash

# A MySQL connection:
DataMapper.setup(:default, 'mysql://root:@localhost/RUPI?charset=UTF-8')
DataMapper.finalize

get '/' do
	haml :index
end

get '/animales?/?' do
	@animales = Registro.all
	haml :animales
end

get '/tratamientos?/?' do
	@list = Tratamiento.all
	tratamiento = @list.first
	erb :tratamientos
end
delete '/tratamientos/:id?/?' do
	tratamiento = Tratamiento.get(params[:id])

	begin
		if tratamiento.destroy
			flash[:success] = "#{tratamiento.nombre} eliminado correctamente"
		end
	rescue Exception => e
		flash[:danger] = "No se pudo eliminar #{tratamiento.nombre}"
		flash[:details] = e
	end
		redirect to '/tratamientos/'
end

get '/animales/:folio?/?' do
	@debug = params
	@animal = Registro.get(params[:folio])
	if @animal
		haml :animal
	else
		"Not found"
	end
end

get '/animales/:folio/tratamiento?/?' do
	@animales = Registro.all
	@animal = Registro.get(params[:folio])
	@animal = Registro.new unless @animal
	erb :tratamiento
end
post '/animales/:folio/tratamiento?/?' do
	# @animal = Registro.new(params)
	params
end

get '/tratamientos?/?' do
	"Lista de tratamientos"
end

