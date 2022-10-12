select
	case
	when smn_produccion.smn_orden_produccion_actividad.opa_estatus='GE' then '${lbl:b_generada}'
	when smn_produccion.smn_orden_produccion_actividad.opa_estatus='DE' then '${lbl:b_despachada}'
	when smn_produccion.smn_orden_produccion_actividad.opa_estatus='RE' then '${lbl:b_rechazada}'
	when smn_produccion.smn_orden_produccion_actividad.opa_estatus='PD' then '${lbl:b_parcialmente_despachada}'
	when smn_produccion.smn_orden_produccion_actividad.opa_estatus='CE' then '${lbl:b_cerrada}'
	end as opa_estatus,
	smn_produccion.smn_orden_produccion_actividad.*
from
	smn_produccion.smn_orden_produccion_actividad,
	smn_produccion.smn_orden_produccion
where
		smn_produccion.smn_orden_produccion_actividad.smn_orden_produccion_id=smn_produccion.smn_orden_produccion.smn_orden_produccion_id and
		smn_produccion.smn_orden_produccion.smn_orden_produccion_id=${fld:id}
