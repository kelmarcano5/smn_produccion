select
		smn_produccion.smn_documento.doc_nombre
from
		smn_produccion.smn_documento
where
		upper(smn_produccion.smn_documento.doc_nombre) = upper(${fld:doc_nombre})
