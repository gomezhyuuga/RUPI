#!/usr/bin/env ruby
# encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'data_mapper' # ORM
require 'Haml' # Templates
require 'awesome_print' # Templates
require "#{Dir.pwd}/models/models.rb"

# CONFIGS
# Change public directory
# set :public_folder, File.dirname(__FILE__) + '/static'
# Change views directory
# set :views, settings.root + '/templates'

# A MySQL connection:
DataMapper.setup(:default, 'mysql://root:@localhost/RUPI?charset=UTF-8')
DataMapper.finalize

get '/' do
	haml :index
end

get '/animales' do
	@animales = Registro.all
	haml :animales
end

get '/animales/:folio' do
	@debug = params
	@animal = Registro.get(params[:folio])
	ap(@animal)
	if @animal
		haml :animal
	else
		"Not found"
	end
end

get '/tratamientos' do

end

