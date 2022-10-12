select
		smn_produccion.smn_orden_produccion.smn_orden_produccion_id,
	${field}
from
	smn_produccion.smn_orden_produccion
where
		smn_produccion.smn_orden_produccion.smn_orden_produccion_id is not null
	${filter}
	
	
