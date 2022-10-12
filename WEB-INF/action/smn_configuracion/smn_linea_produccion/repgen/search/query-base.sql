select
		smn_produccion.smn_linea_produccion.smn_linea_produccion_id,
	${field}
from
	smn_produccion.smn_linea_produccion
where
		smn_produccion.smn_linea_produccion.smn_linea_produccion_id is not null
	${filter}
	
	
