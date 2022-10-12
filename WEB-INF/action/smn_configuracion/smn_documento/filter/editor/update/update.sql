UPDATE smn_produccion.smn_documento SET
	smn_tipo_documento_id=${fld:smn_tipo_documento_id},
	doc_codigo=${fld:doc_codigo},
	doc_nombre=${fld:doc_nombre},
	smn_documento_general_rf=${fld:smn_documento_general_rf},
	smn_modulo_origen=${fld:smn_modulo_origen},
	doc_tipo_movimiento=${fld:doc_tipo_movimiento},
	doc_tipo_orden=${fld:doc_tipo_orden},
	doc_estatus=${fld:doc_estatus},
	doc_idioma='${def:locale}',
	doc_usuario='${def:user}',
	doc_fecha_registro={d '${def:date}'},
	doc_hora='${def:time}'

WHERE
	smn_documento_id=${fld:id}

