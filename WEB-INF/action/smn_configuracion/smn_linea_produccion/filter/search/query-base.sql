select
	case
	when smn_produccion.smn_linea_produccion.lpr_estatus='AC' then '${lbl:b_active}'
	when smn_produccion.smn_linea_produccion.lpr_estatus='IN' then '${lbl:b_inactive}'
	end as lpr_estatus_combo,
	smn_produccion.smn_linea_produccion.lpr_codigo,
	smn_produccion.smn_linea_produccion.lpr_descripcion,
	smn_produccion.smn_linea_produccion.lpr_estatus,
	smn_produccion.smn_linea_produccion.lpr_fecha_registro,
		smn_produccion.smn_linea_produccion.smn_linea_produccion_id
	
from
	smn_produccion.smn_linea_produccion
where
	smn_linea_produccion_id is not null
	${filter}
order by
		smn_linea_produccion_id
