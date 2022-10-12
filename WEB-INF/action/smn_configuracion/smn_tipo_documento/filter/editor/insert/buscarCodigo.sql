select
		smn_produccion.smn_tipo_documento.tdc_codigo
from
		smn_produccion.smn_tipo_documento
where
		upper(smn_produccion.smn_tipo_documento.tdc_codigo) = upper(${fld:tdc_codigo})
