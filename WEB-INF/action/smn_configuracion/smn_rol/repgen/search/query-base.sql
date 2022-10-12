select
		smn_produccion.smn_rol.smn_rol_id,
	${field}
from
	smn_produccion.smn_rol
where
		smn_produccion.smn_rol.smn_rol_id is not null
	${filter}
	
	
