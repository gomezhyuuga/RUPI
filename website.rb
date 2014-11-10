# encoding: UTF-8
require 'rubygems'
require 'sinatra'
require 'data_mapper' # ORM
require 'Haml' # Templates
require 'awesome_print'
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
use Rack::Session::Cookie, :key => 'rack.session',
                           :path => '/',
                           :expire_after => 2592000, # In seconds
                           :secret => 'rupi_super_secret_md5'

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
	@debug = session.inspect
	@list = Tratamiento.all
	tratamiento = @list.first
	@detalles = DetalleTratamiento.all
	erb :tratamientos
end
delete '/tratamientos/:id?/?' do
	tratamiento = Tratamiento.get(params[:id])

	begin
		flash[:success] = "#{tratamiento.nombre} eliminado correctamente" if tratamiento.destroy
	rescue Exception => e
		flash[:danger] = "No se pudo eliminar #{tratamiento.nombre}"
		flash[:details] = e.message
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

