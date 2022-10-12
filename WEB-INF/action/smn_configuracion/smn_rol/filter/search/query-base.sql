select
		smn_produccion.smn_rol.smn_rol_id,
	case
	when smn_produccion.smn_rol.rol_tipo='PR' then '${lbl:b_productor}'
	when smn_produccion.smn_rol.rol_tipo='SU' then '${lbl:b_supervisor}'
	when smn_produccion.smn_rol.rol_tipo='AP' then '${lbl:b_aprobated}'
	end as rol_tipo,
	case
	when smn_produccion.smn_rol.rol_estatus='AC' then '${lbl:b_active}'
	when smn_produccion.smn_rol.rol_estatus='IN' then '${lbl:b_inactive}'
	end as rol_estatus,
	smn_seguridad.s_user.fname ||' - '|| smn_seguridad.s_user.lname as smn_usuario_rf,
	smn_produccion.smn_rol.rol_fecha_registro
	
from
	smn_produccion.smn_rol
	inner join smn_base.smn_usuarios on smn_base.smn_usuarios.smn_usuarios_id = smn_produccion.smn_rol.smn_usuario_rf
	inner join smn_seguridad.s_user on smn_seguridad.s_user.user_id = smn_base.smn_usuarios.smn_user_rf

where
	smn_rol_id is not null
	${filter}
order by
		smn_rol_id
