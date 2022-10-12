INSERT INTO smn_produccion.smn_tipo_documento
(
	smn_tipo_documento_id,
	tdc_codigo,
	tdc_nombre,
	tdc_tipo_produccion,
	tdc_idioma,
	tdc_usuario,
	tdc_fecha_registro,
	tdc_hora
)
VALUES
(
	${seq:currval@smn_produccion.seq_smn_tipo_documento},
	${fld:tdc_codigo},
	${fld:tdc_nombre},
	${fld:tdc_tipo_produccion},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
