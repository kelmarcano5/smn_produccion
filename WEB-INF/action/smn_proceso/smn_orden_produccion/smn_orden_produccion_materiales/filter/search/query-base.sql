select
		smn_produccion.smn_orden_produccion_materiales.smn_orden_produccion_materiales_id,
	smn_produccion.smn_orden_produccion.smn_orden_produccion_id,
	smn_produccion.smn_orden_produccion.opr_descripcion as opr_descripcion_pl0,
	case
	when smn_produccion.smn_orden_produccion_materiales.opm_estatus='GE' then '${lbl:b_generada}'
	when smn_produccion.smn_orden_produccion_materiales.opm_estatus='DE' then '${lbl:b_despachada}'
	when smn_produccion.smn_orden_produccion_materiales.opm_estatus='RE' then '${lbl:b_rechazada}'
	when smn_produccion.smn_orden_produccion_materiales.opm_estatus='PD' then '${lbl:b_parcialmente_despachada}'
	when smn_produccion.smn_orden_produccion_materiales.opm_estatus='CE' then '${lbl:b_cerrada}'
	end as opm_estatus_combo,
	smn_produccion.smn_orden_produccion_materiales.smn_centro_produccion_id,
	smn_produccion.smn_orden_produccion_materiales.smn_linea_produccion_id,
	smn_produccion.smn_orden_produccion_materiales.smn_item_rf,
	smn_produccion.smn_orden_produccion_materiales.opm_cantidad_solicitada,
	smn_produccion.smn_orden_produccion_materiales.opm_cantidad_despachada,
	smn_produccion.smn_orden_produccion_materiales.opm_costo_ml,
	smn_produccion.smn_orden_produccion_materiales.opm_costo_ma,
	smn_produccion.smn_orden_produccion_materiales.opm_estatus,
	smn_produccion.smn_orden_produccion_materiales.opm_fecha_registro
	
from
	smn_produccion.smn_orden_produccion_materiales
	left outer join smn_produccion.smn_orden_produccion on smn_produccion.smn_orden_produccion.smn_orden_produccion_id = smn_produccion.smn_orden_produccion_materiales.smn_orden_produccion_id
	left outer join smn_produccion.smn_centro_produccion on smn_produccion.smn_centro_produccion.smn_centro_produccion_id = smn_produccion.smn_orden_produccion_materiales.smn_centro_produccion_id
	left outer join smn_produccion.smn_linea_produccion on smn_produccion.smn_linea_produccion.smn_linea_produccion_id = smn_produccion.smn_orden_produccion_materiales.smn_linea_produccion_id
	left outer join smn_base.smn_item on smn_base.smn_item.smn_item_id = smn_produccion.smn_orden_produccion_materiales.smn_item_rf
where
	smn_orden_produccion_materiales_id is not null
	and smn_produccion.smn_orden_produccion.smn_orden_produccion_id=${fld:id2}
	${filter}
order by
		smn_orden_produccion_materiales_id
