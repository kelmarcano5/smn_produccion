select
		smn_produccion.smn_centro_produccion.cpr_codigo
from
		smn_produccion.smn_centro_produccion
where
		upper(smn_produccion.smn_centro_produccion.cpr_codigo) = upper(${fld:cpr_codigo})
