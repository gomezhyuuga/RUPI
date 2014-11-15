# encoding: UTF-8
require 'rubygems'
require 'sinatra/base'
# Extensions
require 'sinatra/contrib'
require 'data_mapper' # ORM
require 'haml' # Templates
require 'awesome_print'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'
require 'tux'
require 'shotgun'
require "#{Dir.pwd}/models/models.rb"

# CONFIGS
# Change public directory
# set :public_folder, File.dirname(__FILE__) + '/static'
# Change views directory
# set :views, settings.root + '/templates'

class RupiApp < Sinatra::Application
	enable :sessions
	set :session_secret, 'RUPI SECRET'

	# A MySQL connection:
	DataMapper.setup(:default, 'mysql://rupiapp:rupi82456@localhost/RUPI?encoding=UTF-8')
	DataMapper.finalize

	# READ
	get '/' do
		haml :index, layout: false
	end
	get '/animales/' do
		@animales = Registro.all
		haml :animales
	end
	get '/tratamientos/' do
		@debug = session.inspect
		@list = Tratamiento.all
		tratamiento = @list.first
		@detalles = DetalleTratamiento.all
		haml :tratamientos
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

	# DELETE
	delete '/tratamientos/:id?/?' do
		tratamiento = Tratamiento.get(params[:id])

		begin
			flash[:success] = "#{tratamiento.nombre} eliminado correctamente" if tratamiento.destroy
		rescue Exception => e
			flash[:danger] = "No se pudo eliminar #{tratamiento.nombre}"
			flash[:details] = e.message
		end
		redirect '/tratamientos/'
	end
	delete '/animales/tratamientos/:id' do
		@t = DetalleTratamiento.get(params[:id])
		begin
			flash[:success] = "Tratamiento eliminado correctamente" if @t.destroy
		rescue Exception => e
			flash[:danger] = "No se pudo eliminar el tratamiento"
		end
		redirect "/animales/#{@t.registro.id}"
	end

	 # CREATE
	get '/animales/tratamientos/new' do
		@debug = session.inspect
		@t = DetalleTratamiento.new
		haml :animales_tratamiento
	end
	post '/animales/tratamientos/new' do
		@t = DetalleTratamiento.new(params[:tratamiento])

		if @t.save
			flash[:success] = "Tratamiento guardado correctamente"
			redirect to "/animales/#{@t.folio}"
		else
			flash.now[:danger] = "Error guardando el tratamiento"
			haml :animales_tratamiento
		end
	end
	post '/tratamientos/new' do
		@t = Tratamiento.new params[:tratamiento]

		if @t.save
			flash[:success] = "Tratamiento guardado correctamente"
			redirect to "/tratamientos/"
		else
			flash.now[:danger] = "Error guardando el tratamiento"
			haml :tratamiento
		end
	end

	get '/tratamientos/new' do
		@t = Tratamiento.new
		haml :tratamiento
	end
	get '/tratamientos/:id/edit' do
		@t = Tratamiento.get(params[:id])
		haml :tratamiento_edit
	end

	# UPDATE
	put '/tratamientos/:id' do
		@t = Tratamiento.get(params[:id])
		if @t.update( params[:tratamiento] )
			flash[:success] = "Tratamiento actualizado correctamente"
			redirect to "/tratamientos/"
		else
			flash.now[:danger] = "No se pudo actualizar el tratamiento"
			haml :tratamiento_edit
		end
	end

	# Helpers
	helpers do
		def pdate(date)
			date.strftime "%d/%m/%Y"
		end

		def action_buttons( edit = "", delete )
			"<a class='btn btn-xs btn-link' href='#{edit}'>" +
				"<i class='glyphicon glyphicon-pencil'></i>" +
			"</button>" +
			"<form class='inline' action='#{delete}' method='POST'>" +
				"<input name='_method' type='hidden' value='delete' />" +
				"<button class='btn btn-xs btn-link' type='submit'>" +
					"<i class='glyphicon glyphicon-remove'></i>" +
				"</button>" +
			"</form>"
		end

		def label_status( status, content )
			# 1: Sin adoptar
			# 2: Adoptado
			# 3: Enfermo
			dirs = [:success, :danger, :info]
			"<span class='label label-#{dirs[status-1]}'>" +
			content.to_s +
			"</span>"
		end
	end

	run! if app_file == $0
end