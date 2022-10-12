select
		smn_produccion.smn_centro_produccion.cpr_descripcion
from
		smn_produccion.smn_centro_produccion
where
		upper(smn_produccion.smn_centro_produccion.cpr_descripcion) = upper(${fld:cpr_descripcion})
