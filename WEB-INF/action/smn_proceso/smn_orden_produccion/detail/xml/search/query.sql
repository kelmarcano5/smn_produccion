select
	(select smn_base.smn_modulos.mod_codigo || ' - ' || smn_base.smn_modulos.mod_nombre from  smn_base.smn_modulos  where smn_base.smn_modulos.smn_modulos_id is not null  and smn_base.smn_modulos.smn_modulos_id=smn_produccion.smn_orden_produccion.smn_modulo_rf  order by smn_base.smn_modulos.mod_nombre ) as smn_modulo_rf,
	(select smn_base.smn_documentos_generales.dcg_codigo ||' - '||  smn_base.smn_documentos_generales.dcg_descripcion from   smn_base.smn_documentos_generales  where smn_base.smn_documentos_generales.smn_documentos_generales_id is not null  and smn_base.smn_documentos_generales.smn_documentos_generales_id=smn_produccion.smn_orden_produccion.smn_documento_origen_rf  order by smn_base.smn_documentos_generales.dcg_descripcion asc ) as smn_documento_origen_rf,
	(select smn_base.smn_auxiliar.smn_auxiliar_id|| ' - ' || smn_base.smn_auxiliar.aux_nombres || ' ' || smn_base.smn_auxiliar.aux_apellidos from  smn_base.smn_usuarios, smn_base.smn_auxiliar where  smn_base.smn_usuarios.smn_auxiliar_rf = smn_base.smn_auxiliar.smn_auxiliar_id  and smn_usuarios_id=smn_produccion.smn_orden_produccion.smn_usuario_solicitante_rf  order by  smn_usuarios_id ) as smn_usuario_solicitante_rf,
	(select smn_produccion.smn_documento.doc_codigo ||' - '|| smn_produccion.smn_documento.doc_nombre from  smn_produccion.smn_documento  where smn_produccion.smn_documento.smn_documento_id is not null  and smn_produccion.smn_documento.smn_documento_id=smn_produccion.smn_orden_produccion.smn_documento_id  order by smn_produccion.smn_documento.doc_nombre asc ) as smn_documento_id,
	(select smn_base.smn_entidades.ent_codigo|| ' - ' || smn_base.smn_entidades.ent_descripcion_corta from  smn_base.smn_entidades where smn_base.smn_entidades.smn_entidades_id is not null  and smn_base.smn_entidades.smn_entidades_id=smn_produccion.smn_orden_produccion.smn_entidad_rf) as smn_entidad_rf,
	(select smn_base.smn_sucursales.suc_codigo|| ' - ' || smn_base.smn_sucursales.suc_nombre from  smn_base.smn_sucursales where smn_base.smn_sucursales.smn_sucursales_id is not null  and smn_base.smn_sucursales.smn_sucursales_id=smn_produccion.smn_orden_produccion.smn_sucursal_rf) as smn_sucursal_rf,
	(select smn_base.smn_item.itm_nombre from  smn_base.smn_item  where smn_base.smn_item.smn_item_id is not null  and smn_base.smn_item.smn_item_id=smn_produccion.smn_orden_produccion.smn_item_rf  order by smn_base.smn_item.itm_nombre asc ) as smn_item_rf,
	(select smn_produccion.smn_rol.rol_tipo from  smn_produccion.smn_rol ORDER BY smn_produccion.smn_rol.rol_tipo asc where smn_produccion.smn_rol.smn_rol_id is not null  and smn_produccion.smn_rol.smn_rol_id=smn_produccion.smn_orden_produccion.smn_rol_id) as smn_rol_id,
	case
		when smn_produccion.smn_orden_produccion.opr_estatus='GE' then '${lbl:b_generada}'
		when smn_produccion.smn_orden_produccion.opr_estatus='TR' then '${lbl:b_transporte}'
		when smn_produccion.smn_orden_produccion.opr_estatus='AP' then '${lbl:b_aprobada}'
		when smn_produccion.smn_orden_produccion.opr_estatus='RE' then '${lbl:b_rechazada}'
		when smn_produccion.smn_orden_produccion.opr_estatus='EN' then '${lbl:b_entregada}'
		when smn_produccion.smn_orden_produccion.opr_estatus='PE' then '${lbl:b_parcialmente_entregada}'
		when smn_produccion.smn_orden_produccion.opr_estatus='CE' then '${lbl:b_cerrada}'
	end as opr_estatus,
	smn_produccion.smn_orden_produccion.*
from 
	smn_produccion.smn_orden_produccion
where
	smn_orden_produccion_id = ${fld:id}
