select
		smn_produccion.smn_tipo_documento.tdc_nombre
from
		smn_produccion.smn_tipo_documento
where
		upper(smn_produccion.smn_tipo_documento.tdc_nombre) = upper(${fld:tdc_nombre})
