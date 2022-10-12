select
	(select smn_produccion.smn_centro_produccion.cpr_codigo ||' - '|| smn_produccion.smn_centro_produccion.cpr_descripcion from  smn_produccion.smn_centro_produccion where smn_produccion.smn_centro_produccion.smn_centro_produccion_id is not null  and smn_produccion.smn_centro_produccion.smn_centro_produccion_id=smn_produccion.smn_orden_produccion.smn_centro_produccion_id) as smn_centro_produccion_id,
	(select smn_produccion.smn_linea_produccion.lpr_codigo ||' - '|| smn_produccion.smn_linea_produccion.lpr_descripcion from  smn_produccion.smn_linea_produccion where smn_produccion.smn_linea_produccion.smn_linea_produccion_id is not null  and smn_produccion.smn_linea_produccion.smn_linea_produccion_id=smn_produccion.smn_orden_produccion.smn_linea_produccion_id) as smn_linea_produccion_id,
	(select smn_base.smn_activo_fijo.acf_codigo ||' - '|| smn_base.smn_activo_fijo.acf_nombre from  smn_base.smn_activo_fijo  where smn_base.smn_activo_fijo.smn_afijo_id is not null  and smn_base.smn_activo_fijo.smn_afijo_id=smn_produccion.smn_orden_produccion.smn_activo_rf  order by smn_base.smn_activo_fijo.acf_nombre asc ) as smn_activo_rf,
	(select smn_base.smn_unidad_medida.unm_codigo|| ' - ' || smn_base.smn_unidad_medida.unm_descripcion from  smn_base.smn_unidad_medida  where smn_base.smn_unidad_medida.smn_unidad_medida_id is not null  and smn_base.smn_unidad_medida.smn_unidad_medida_id=smn_produccion.smn_orden_produccion.smn_unidad_medida_rf  order by unm_descripcion ) as smn_unidad_medida_rf,
	(select smn_produccion.smn_rol.rol_tipo from  smn_produccion.smn_rol ORDER BY smn_produccion.smn_rol.rol_tipo asc where smn_produccion.smn_rol.smn_rol_id is not null  and smn_produccion.smn_rol.smn_rol_id=smn_produccion.smn_orden_produccion.smn_rol_id) as smn_rol_id,
	case
		when smn_produccion.smn_orden_produccion_equipos.ope_estatus='GE' then '${lbl:b_generada}'
		when smn_produccion.smn_orden_produccion_equipos.ope_estatus='DE' then '${lbl:b_despachada}'
		when smn_produccion.smn_orden_produccion_equipos.ope_estatus='RE' then '${lbl:b_rechazada}'
		when smn_produccion.smn_orden_produccion_equipos.ope_estatus='PD' then '${lbl:b_parcialmente_despachada}'
		when smn_produccion.smn_orden_produccion_equipos.ope_estatus='CE' then '${lbl:b_cerrada}'
	end as ope_estatus,
	smn_produccion.smn_orden_produccion_equipos.*
from 
	smn_produccion.smn_orden_produccion_equipos,
	smn_produccion.smn_orden_produccion
where
	smn_produccion.smn_orden_produccion_equipos.smn_orden_produccion_id=smn_produccion.smn_orden_produccion.smn_orden_produccion_id and 
	smn_produccion.smn_orden_produccion.smn_orden_produccion_id=${fld:id}
