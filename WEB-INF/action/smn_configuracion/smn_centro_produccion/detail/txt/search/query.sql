select
select
	case
	when smn_produccion.smn_centro_produccion.cpr_estatus='AC' then '${lbl:b_active}'
	when smn_produccion.smn_centro_produccion.cpr_estatus='IN' then '${lbl:b_inactive}'
	end as cpr_estatus,
	smn_produccion.smn_centro_produccion.*
from
	smn_produccion.smn_centro_produccion
where
	smn_centro_produccion_id = ${fld:id}
