select
select
	case
	when smn_produccion.smn_rol.rol_tipo='PR' then '${lbl:b_productor}'
	when smn_produccion.smn_rol.rol_tipo='SU' then '${lbl:b_supervisor}'
	when smn_produccion.smn_rol.rol_tipo='AP' then '${lbl:b_aprobated}'
	end as rol_tipo,
	case
	when smn_produccion.smn_rol.rol_estatus='AC' then '${lbl:b_active}'
	when smn_produccion.smn_rol.rol_estatus='IN' then '${lbl:b_inactive}'
	end as rol_estatus,
	smn_produccion.smn_rol.*
from
	smn_produccion.smn_rol
where
	smn_rol_id = ${fld:id}
