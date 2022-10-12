select
		smn_produccion.smn_centro_produccion.smn_centro_produccion_id,
select
		smn_produccion.smn_centro_produccion.smn_centro_produccion_id,
	case
	when smn_produccion.smn_centro_produccion.cpr_estatus='AC' then '${lbl:b_active}'
	when smn_produccion.smn_centro_produccion.cpr_estatus='IN' then '${lbl:b_inactive}'
	end as cpr_estatus,
	smn_produccion.smn_centro_produccion.cpr_codigo,
	smn_produccion.smn_centro_produccion.cpr_descripcion,
	smn_produccion.smn_centro_produccion.smn_centro_costo_rf,
	smn_produccion.smn_centro_produccion.cpr_estatus,
	smn_produccion.smn_centro_produccion.cpr_fecha_registro
	
from
	smn_produccion.smn_centro_produccion
