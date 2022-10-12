select
	smn_produccion.smn_orden_produccion.smn_orden_produccion_id,
	case
	when smn_produccion.smn_orden_produccion.opr_estatus='GE' then '${lbl:b_generada}'
	when smn_produccion.smn_orden_produccion.opr_estatus='TR' then '${lbl:b_transporte}'
	when smn_produccion.smn_orden_produccion.opr_estatus='AP' then '${lbl:b_aprobada}'
	when smn_produccion.smn_orden_produccion.opr_estatus='RE' then '${lbl:b_rechazada}'
	when smn_produccion.smn_orden_produccion.opr_estatus='EN' then '${lbl:b_entregada}'
	when smn_produccion.smn_orden_produccion.opr_estatus='PE' then '${lbl:b_parcialmente_entregada}'
	when smn_produccion.smn_orden_produccion.opr_estatus='CE' then '${lbl:b_cerrada}'
	end as opr_estatus,
	smn_base.smn_modulos.mod_nombre as smn_modulo_rf,
	smn_base.smn_documentos_generales.dcg_descripcion as smn_documento_origen_rf,
	smn_produccion.smn_orden_produccion.opr_numero_documento_origen,
	smn_produccion.smn_orden_produccion.smn_documento_id,
	smn_produccion.smn_orden_produccion.opr_numero_documento,
	smn_produccion.smn_orden_produccion.opr_descripcion,
	smn_base.smn_entidades.ent_descripcion_corta as smn_entidad_rf,
	smn_base.smn_sucursales.suc_nombre as smn_sucursal_rf,
	smn_base.smn_item.itm_nombre as smn_item_rf,
	smn_produccion.smn_orden_produccion.opr_cantidad,
	smn_produccion.smn_orden_produccion.opr_fecha_despacho,
		smn_produccion.smn_orden_produccion.opr_fecha_solicitud,
		case
		when smn_produccion.smn_rol.rol_tipo='PR' then '${lbl:b_productor}'
		when smn_produccion.smn_rol.rol_tipo='SU' then '${lbl:b_supervisor}'
		when smn_produccion.smn_rol.rol_tipo='AP' then '${lbl:b_aprobated}'
	end as smn_rol_id,
	smn_seguridad.s_user.fname ||' - '|| smn_seguridad.s_user.lname as smn_usuario_solicitante_rf,
	smn_produccion.smn_orden_produccion.opr_fecha_registro
	
from
	smn_produccion.smn_orden_produccion
	inner join smn_base.smn_modulos on smn_base.smn_modulos.smn_modulos_id = 	smn_produccion.smn_orden_produccion.smn_modulo_rf
	inner join smn_base.smn_entidades on smn_base.smn_entidades.smn_entidades_id = 	smn_produccion.smn_orden_produccion.smn_entidad_rf
	inner join smn_base.smn_sucursales on smn_base.smn_sucursales.smn_sucursales_id = 	smn_produccion.smn_orden_produccion.smn_sucursal_rf
	inner join smn_produccion.smn_documento on smn_produccion.smn_documento.smn_documento_id = 	smn_produccion.smn_orden_produccion.smn_documento_id
	inner join smn_base.smn_item on smn_base.smn_item.smn_item_id = smn_produccion.smn_orden_produccion.smn_item_rf
	inner join smn_produccion.smn_rol on smn_produccion.smn_rol.smn_rol_id = smn_produccion.smn_orden_produccion.smn_rol_id
	inner join smn_base.smn_documentos_generales on smn_base.smn_documentos_generales.smn_documentos_generales_id = smn_produccion.smn_orden_produccion.smn_documento_origen_rf
	inner join smn_base.smn_usuarios on smn_base.smn_usuarios.smn_usuarios_id = smn_produccion.smn_orden_produccion.smn_usuario_solicitante_rf
	inner join smn_seguridad.s_user on smn_seguridad.s_user.user_id = smn_base.smn_usuarios.smn_user_rf
where
	smn_orden_produccion_id = ${fld:id}
