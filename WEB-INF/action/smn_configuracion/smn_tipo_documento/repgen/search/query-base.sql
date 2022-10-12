select
		smn_produccion.smn_tipo_documento.smn_tipo_documento_id,
	${field}
from
	smn_produccion.smn_tipo_documento
where
		smn_produccion.smn_tipo_documento.smn_tipo_documento_id is not null
	${filter}
	
	
