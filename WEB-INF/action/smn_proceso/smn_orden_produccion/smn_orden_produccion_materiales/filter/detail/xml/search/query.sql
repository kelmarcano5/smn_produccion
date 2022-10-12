select
	smn_produccion.smn_orden_produccion.smn_orden_produccion_id,
	smn_produccion.smn_orden_produccion.opr_descripcion as opr_descripcion_pl0,
select
select
select
select
	case
	when smn_produccion.smn_orden_produccion_materiales.opm_estatus='GE' then '${lbl:b_generada}'
	when smn_produccion.smn_orden_produccion_materiales.opm_estatus='DE' then '${lbl:b_despachada}'
	when smn_produccion.smn_orden_produccion_materiales.opm_estatus='RE' then '${lbl:b_rechazada}'
	when smn_produccion.smn_orden_produccion_materiales.opm_estatus='PD' then '${lbl:b_parcialmente_despachada}'
	when smn_produccion.smn_orden_produccion_materiales.opm_estatus='CE' then '${lbl:b_cerrada}'
	end as opm_estatus,
	smn_produccion.smn_orden_produccion_materiales.*
from
	smn_produccion.smn_orden_produccion,
	smn_produccion.smn_orden_produccion_materiales
where
	smn_produccion.smn_orden_produccion.smn_orden_produccion_id=smn_produccion.smn_orden_produccion_materiales.smn_orden_produccion_id
	and
	smn_orden_produccion_materiales_id = ${fld:id}
