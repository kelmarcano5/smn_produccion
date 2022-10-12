select
		smn_produccion.smn_centro_produccion.smn_centro_produccion_id,
	case
	when smn_produccion.smn_centro_produccion.cpr_estatus='AC' then '${lbl:b_active}'
	when smn_produccion.smn_centro_produccion.cpr_estatus='IN' then '${lbl:b_inactive}'
	end as cpr_estatus,
	smn_produccion.smn_centro_produccion.cpr_codigo,
	smn_produccion.smn_centro_produccion.cpr_descripcion,
	smn_base.smn_centro_costo.cco_descripcion_corta as smn_centro_costo_rf,
	smn_produccion.smn_centro_produccion.cpr_fecha_registro
	
from
	smn_produccion.smn_centro_produccion
	inner join smn_base.smn_centro_costo on smn_base.smn_centro_costo.smn_centro_costo_id = smn_produccion.smn_centro_produccion.smn_centro_costo_rf
