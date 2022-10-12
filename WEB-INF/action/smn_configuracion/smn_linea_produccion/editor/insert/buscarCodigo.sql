select
		smn_produccion.smn_linea_produccion.lpr_codigo
from
		smn_produccion.smn_linea_produccion
where
		upper(smn_produccion.smn_linea_produccion.lpr_codigo) = upper(${fld:lpr_codigo})
