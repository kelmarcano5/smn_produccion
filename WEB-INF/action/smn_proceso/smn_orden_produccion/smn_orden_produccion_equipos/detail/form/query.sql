select
	smn_produccion.smn_orden_produccion.smn_orden_produccion_id,
	smn_produccion.smn_orden_produccion.opr_descripcion as opr_descripcion_pl0,
select
select
select
select
	case
	when smn_produccion.smn_orden_produccion_equipos.ope_estatus='GE' then '${lbl:b_generada}'
	when smn_produccion.smn_orden_produccion_equipos.ope_estatus='DE' then '${lbl:b_despachada}'
	when smn_produccion.smn_orden_produccion_equipos.ope_estatus='RE' then '${lbl:b_rechazada}'
	when smn_produccion.smn_orden_produccion_equipos.ope_estatus='PD' then '${lbl:b_parcialmente_despachada}'
	when smn_produccion.smn_orden_produccion_equipos.ope_estatus='CE' then '${lbl:b_cerrada}'
	end as ope_estatus_combo,
	smn_produccion.smn_orden_produccion_equipos.*
from
	smn_produccion.smn_orden_produccion,
	smn_produccion.smn_orden_produccion_equipos
where
	smn_produccion.smn_orden_produccion.smn_orden_produccion_id=smn_produccion.smn_orden_produccion_equipos.smn_orden_produccion_id
	and
	smn_orden_produccion_equipos_id = ${fld:id}
