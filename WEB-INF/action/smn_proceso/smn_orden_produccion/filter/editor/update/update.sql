UPDATE smn_produccion.smn_orden_produccion SET
	smn_modulo_rf=${fld:smn_modulo_rf},
	smn_documento_origen_rf=${fld:smn_documento_origen_rf},
	opr_numero_documento_origen=${fld:opr_numero_documento_origen},
	smn_usuario_solicitante_rf=${fld:smn_usuario_solicitante_rf},
	smn_documento_id=${fld:smn_documento_id},
	opr_numero_documento=${fld:opr_numero_documento},
	opr_descripcion=${fld:opr_descripcion},
	smn_entidad_rf=${fld:smn_entidad_rf},
	smn_sucursal_rf=${fld:smn_sucursal_rf},
	smn_item_rf=${fld:smn_item_rf},
	opr_cantidad=${fld:opr_cantidad},
	opr_fecha_solicitud=${fld:opr_fecha_solicitud},
	opr_fecha_despacho=${fld:opr_fecha_despacho},
	smn_rol_id=${fld:smn_rol_id},
	opr_estatus=${fld:opr_estatus},
	opr_idioma='${def:locale}',
	opr_usuario='${def:user}',
	opr_fecha_registro={d '${def:date}'},
	opr_hora='${def:time}'

WHERE
	smn_orden_produccion_id=${fld:id}

