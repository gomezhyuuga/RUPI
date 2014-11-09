require 'data_mapper'
DataMapper.setup(:default, 'mysql://root:@localhost/RUPI?encoding=UTF8')
load "#{Dir.pwd}/models/models.rb"
a = Registro.first

DataMapper.repository(:default).adapter.resource_naming_convention = DataMapper::NamingConventions::Resource::Underscored

DataMapper.finalize
