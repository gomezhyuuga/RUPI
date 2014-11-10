# encoding: UTF-8
require 'data_mapper' # ORM
require "#{Dir.pwd}/models/models.rb"

# CONFIGS
# Change public directory
# set :public_folder, File.dirname(__FILE__) + '/static'
# Change views directory
# set :views, settings.root + '/templates'
# A MySQL connection:
DataMapper.setup(:default, 'mysql://root:@localhost/RUPI?charset=UTF-8')
DataMapper.finalize