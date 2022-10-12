select
	smn_produccion.smn_orden_produccion_actividad.smn_orden_produccion_actividad_id,
	smn_produccion.smn_orden_produccion.smn_orden_produccion_id,
	smn_produccion.smn_orden_produccion.opr_descripcion as opr_descripcion_pl0,
	case
	when smn_produccion.smn_orden_produccion_actividad.opa_estatus='GE' then '${lbl:b_generada}'
	when smn_produccion.smn_orden_produccion_actividad.opa_estatus='DE' then '${lbl:b_despachada}'
	when smn_produccion.smn_orden_produccion_actividad.opa_estatus='RE' then '${lbl:b_rechazada}'
	when smn_produccion.smn_orden_produccion_actividad.opa_estatus='PD' then '${lbl:b_parcialmente_despachada}'
	when smn_produccion.smn_orden_produccion_actividad.opa_estatus='CE' then '${lbl:b_cerrada}'
	end as opa_estatus,
	smn_base.smn_activo_fijo.acf_nombre as smn_activo_rf,
	smn_produccion.smn_centro_produccion.cpr_descripcion as smn_centro_produccion_id,
	smn_produccion.smn_linea_produccion.lpr_descripcion as smn_linea_produccion_id,
	smn_produccion.smn_orden_produccion_actividad.smn_funciones_id,
	smn_produccion.smn_orden_produccion_actividad.opa_hora_inicial,
	smn_produccion.smn_orden_produccion_actividad.opa_hora_final,
	smn_produccion.smn_orden_produccion_actividad.opa_horas,
	smn_base.smn_unidad_medida.unm_descripcion as smn_unidad_medida_rf,
	smn_produccion.smn_orden_produccion_actividad.opa_fecha_registro
	
from
	smn_produccion.smn_orden_produccion_actividad
	inner join smn_produccion.smn_orden_produccion on smn_produccion.smn_orden_produccion.smn_orden_produccion_id = smn_produccion.smn_orden_produccion_actividad.smn_orden_produccion_id
	inner join smn_produccion.smn_centro_produccion on smn_produccion.smn_centro_produccion.smn_centro_produccion_id = smn_produccion.smn_orden_produccion_actividad.smn_centro_produccion_id
	inner join smn_produccion.smn_linea_produccion on smn_produccion.smn_linea_produccion.smn_linea_produccion_id = smn_produccion.smn_orden_produccion_actividad.smn_linea_produccion_id
	inner join smn_base.smn_unidad_medida on smn_base.smn_unidad_medida.smn_unidad_medida_id = smn_produccion.smn_orden_produccion_actividad.smn_unidad_medida_rf
	left outer join smn_base.smn_activo_fijo on smn_base.smn_activo_fijo.smn_afijo_id = smn_produccion.smn_orden_produccion_actividad.smn_activo_rf
where
	smn_produccion.smn_orden_produccion.smn_orden_produccion_id=${fld:id2}
