INSERT INTO smn_produccion.smn_tipo_documento
(
	smn_tipo_documento_id,
	tdc_codigo,
	tdc_nombre,
	tdc_tipo_produccion,
	tdc_fecha_registro
)
VALUES
(
	${seq:nextval@smn_produccion.seq_smn_tipo_documento},
	?,
	?,
	?,
	{d '${def:date}'}
)
