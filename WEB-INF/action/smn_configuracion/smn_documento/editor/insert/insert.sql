INSERT INTO smn_produccion.smn_documento
(
	smn_documento_id,
	smn_tipo_documento_id,
	doc_codigo,
	doc_nombre,
	smn_documento_general_rf,
	smn_modulo_origen,
	doc_tipo_movimiento,
	doc_tipo_orden,
	doc_estatus,
	doc_idioma,
	doc_usuario,
	doc_fecha_registro,
	doc_hora
)
VALUES
(
	${seq:currval@smn_produccion.seq_smn_documento},
	${fld:smn_tipo_documento_id},
	${fld:doc_codigo},
	${fld:doc_nombre},
	${fld:smn_documento_general_rf},
	${fld:smn_modulo_origen},
	${fld:doc_tipo_movimiento},
	${fld:doc_tipo_orden},
	${fld:doc_estatus},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
