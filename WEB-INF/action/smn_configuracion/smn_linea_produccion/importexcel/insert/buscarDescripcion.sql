select
		smn_produccion.smn_linea_produccion.lpr_descripcion
from
		smn_produccion.smn_linea_produccion
where
		upper(smn_produccion.smn_linea_produccion.lpr_descripcion) = upper(${fld:lpr_descripcion})
