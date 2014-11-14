# encoding: UTF-8
class	Registro
	include DataMapper::Resource
	# set all String properties to have a default length of 255
	DataMapper::Property::String.length(255)

	# set the storage name for the :legacy repository
   storage_names[:default] = "Registro"

   # properties from teacher's ER-diagram
	property :id,				Serial, field: "folio"
	property :nombre,			String
	property :sexo,			String
	property :color,			String
	property :peso,			Float
	property :nacimiento,	Date, field: "fecha_nacimiento"
	property :observaciones, Text
	property :adoptante, 	Integer, field: "id_adoptante"
	# Custom properties
	property :image,	String

	# Associations
	# belongs_to :veterinario, 'Veterinario', child_key: 'id_vetRecibe', field: 'myfield'
	belongs_to :raza, 'Raza', child_key: 'id_raza'
	belongs_to :especie, 'Especie', child_key: 'id_especie'
	belongs_to :status, 'Estatus', child_key: 'id_status'
	belongs_to :veterinario, 'Veterinario', child_key: 'id_veterinario'
	# Since the foreign key pointing to Person isn't named 'person_id',
	# we need to override it by specifying the :child_key option. If the
	# Person model's key would be something different from 'id', we would
	# also need to specify the :parent_key option.
	has n, :tratamientos, 'DetalleTratamiento', child_key: [ :folio ]

	def to_s
		@nombre
	end
	def sexo
		case @sexo
		when "M"
			"Masculino"
		when "F"
			"Femenino"
		end
	end
end

class Tratamiento
	include DataMapper::Resource
	# set all String properties to have a default length of 255
	DataMapper::Property::String.length(255)

	# set the storage name for the :legacy repository
   storage_names[:default] = "Tratamiento"

   property :id,			Serial, field: "id_tratamiento"
   property :nombre,		String, field: "nombreT", required: true

   def to_s
   	@nombre
   end
end

class DetalleTratamiento
	include DataMapper::Resource
	# set all String properties to have a default length of 255
	DataMapper::Property::String.length(255)

	# set the storage name for the :legacy repository
   storage_names[:default] = "DetalleTratamiento"
   property :id,						Serial
   property :fecha_aplicacion,	Date, required: true
   # property :veterinario,			Integer, field: "id_veterinario", required: true

   # belongs_to child_key: FK de esta tabla
   # belongs_to parent_key: PK de la tabla referenciada
   belongs_to :tratamiento, 'Tratamiento', child_key: :id_tratamiento
   belongs_to :registro, 'Registro', child_key: :folio
   belongs_to :veterinario, 'Veterinario', child_key: :id_veterinario
end

class Veterinario
	include DataMapper::Resource
	# set all String properties to have a default length of 255
	DataMapper::Property::String.length(255)

	# set the storage name for the :legacy repository
   storage_names[:default] = "Veterinario"

   property :id,			Serial, field: "id_veterinario"
   property :nombre,		String
   property :apellido,	String

   # Associations
   # has n, :registro, 'Registro'

   def to_s
   	"#{@nombre} #{@apellido}"
   end
end


class Raza
	include DataMapper::Resource
	# set all String properties to have a default length of 255
	DataMapper::Property::String.length(255)

	# set the storage name for the :legacy repository
   storage_names[:default] = "Raza"

   property :id,			Serial, field: "id_raza"
   property :nombre,		String, field: "nombreR"
   property :talla,		String

   def to_s
   	@nombre
   end
end
class Especie
	include DataMapper::Resource
	# set all String properties to have a default length of 255
	DataMapper::Property::String.length(255)

	# set the storage name for the :legacy repository
   storage_names[:default] = "Especie"

   property :id,			Serial, field: "id_especie"
   property :nombre,		String, field: "nombreE"
   property :origen,		String

   def to_s
   	@nombre
   end
end
class Estatus
	include DataMapper::Resource
	# set all String properties to have a default length of 255
	DataMapper::Property::String.length(255)

	# set the storage name for the :legacy repository
   storage_names[:default] = "Estatus"

   property :id,			Serial, field: "id_status"
   property :nombre,		String, field: "nombreS"

   def to_s
   	@nombre
   end
end