select
	(select smn_produccion.smn_centro_produccion.cpr_codigo ||' - '|| smn_produccion.smn_centro_produccion.cpr_descripcion from  smn_produccion.smn_centro_produccion where smn_produccion.smn_centro_produccion.smn_centro_produccion_id is not null  and smn_produccion.smn_centro_produccion.smn_centro_produccion_id=smn_produccion.smn_orden_produccion.smn_centro_produccion_id) as smn_centro_produccion_id,
	(select smn_produccion.smn_linea_produccion.lpr_codigo ||' - '|| smn_produccion.smn_linea_produccion.lpr_descripcion from  smn_produccion.smn_linea_produccion where smn_produccion.smn_linea_produccion.smn_linea_produccion_id is not null  and smn_produccion.smn_linea_produccion.smn_linea_produccion_id=smn_produccion.smn_orden_produccion.smn_linea_produccion_id) as smn_linea_produccion_id,
	(select smn_base.smn_item.itm_nombre from  smn_base.smn_item  where smn_base.smn_item.smn_item_id is not null  and smn_base.smn_item.smn_item_id=smn_produccion.smn_orden_produccion.smn_item_rf  order by smn_base.smn_item.itm_nombre asc ) as smn_item_rf,
	case
		when smn_produccion.smn_orden_produccion_materiales.opm_estatus='GE' then '${lbl:b_generada}'
		when smn_produccion.smn_orden_produccion_materiales.opm_estatus='DE' then '${lbl:b_despachada}'
		when smn_produccion.smn_orden_produccion_materiales.opm_estatus='RE' then '${lbl:b_rechazada}'
		when smn_produccion.smn_orden_produccion_materiales.opm_estatus='PD' then '${lbl:b_parcialmente_despachada}'
		when smn_produccion.smn_orden_produccion_materiales.opm_estatus='CE' then '${lbl:b_cerrada}'
	end as opm_estatus,
	smn_produccion.smn_orden_produccion_materiales.*
from 
	smn_produccion.smn_orden_produccion_materiales,
	smn_produccion.smn_orden_produccion
where
	smn_produccion.smn_orden_produccion_materiales.smn_orden_produccion_id=smn_produccion.smn_orden_produccion.smn_orden_produccion_id and 
	smn_produccion.smn_orden_produccion.smn_orden_produccion_id=${fld:id}
