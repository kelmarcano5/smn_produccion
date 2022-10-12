select
	case
	when smn_produccion.smn_linea_produccion.lpr_estatus='AC' then '${lbl:b_active}'
	when smn_produccion.smn_linea_produccion.lpr_estatus='IN' then '${lbl:b_inactive}'
	end as lpr_estatus_combo,
	smn_produccion.smn_linea_produccion.*
from
	smn_produccion.smn_linea_produccion
where
	smn_linea_produccion_id = ${fld:id}
