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
	doc_fecha_registro
)
VALUES
(
	${seq:nextval@smn_produccion.seq_smn_documento},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
