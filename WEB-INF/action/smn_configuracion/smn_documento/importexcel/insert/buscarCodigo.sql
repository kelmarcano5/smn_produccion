select
		smn_produccion.smn_documento.doc_codigo
from
		smn_produccion.smn_documento
where
		upper(smn_produccion.smn_documento.doc_codigo) = upper(${fld:doc_codigo})
