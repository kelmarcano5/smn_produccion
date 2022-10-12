select
	smn_produccion.smn_orden_produccion_equipos.smn_orden_produccion_equipos_id,
	smn_produccion.smn_orden_produccion.opr_descripcion as opr_descripcion_pl0,
	case
	when smn_produccion.smn_orden_produccion_equipos.ope_estatus='GE' then '${lbl:b_generada}'
	when smn_produccion.smn_orden_produccion_equipos.ope_estatus='DE' then '${lbl:b_despachada}'
	when smn_produccion.smn_orden_produccion_equipos.ope_estatus='RE' then '${lbl:b_rechazada}'
	when smn_produccion.smn_orden_produccion_equipos.ope_estatus='PD' then '${lbl:b_parcialmente_despachada}'
	when smn_produccion.smn_orden_produccion_equipos.ope_estatus='CE' then '${lbl:b_cerrada}'
	end as ope_estatus,
	smn_produccion.smn_orden_produccion_equipos.smn_orden_produccion_id,
	smn_produccion.smn_centro_produccion.cpr_descripcion as smn_centro_produccion_id,
	smn_produccion.smn_linea_produccion.lpr_descripcion as smn_linea_produccion_id,
	smn_base.smn_activo_fijo.acf_nombre as smn_activo_rf,
	smn_produccion.smn_orden_produccion_equipos.ope_fecha_registro
	
from
	smn_produccion.smn_orden_produccion_equipos
	inner join smn_produccion.smn_orden_produccion on smn_produccion.smn_orden_produccion.smn_orden_produccion_id = smn_produccion.smn_orden_produccion_equipos.smn_orden_produccion_id
	inner join smn_produccion.smn_centro_produccion on smn_produccion.smn_centro_produccion.smn_centro_produccion_id = smn_produccion.smn_orden_produccion_equipos.smn_centro_produccion_id
	inner join smn_produccion.smn_linea_produccion on smn_produccion.smn_linea_produccion.smn_linea_produccion_id = smn_produccion.smn_orden_produccion_equipos.smn_linea_produccion_id
	left outer join smn_base.smn_activo_fijo on smn_base.smn_activo_fijo.smn_afijo_id = smn_produccion.smn_orden_produccion_equipos.smn_activo_rf
where
	smn_orden_produccion_equipos_id is not null
	and smn_produccion.smn_orden_produccion.smn_orden_produccion_id=${fld:id2}
	${filter}
order by
		smn_orden_produccion_equipos_id
