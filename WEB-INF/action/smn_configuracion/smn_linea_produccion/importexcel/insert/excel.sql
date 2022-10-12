INSERT INTO smn_produccion.smn_linea_produccion
(
	smn_linea_produccion_id,
	lpr_codigo,
	lpr_descripcion,
	lpr_estatus,
	lpr_fecha_registro
)
VALUES
(
	${seq:nextval@smn_produccion.seq_smn_linea_produccion},
	?,
	?,
	?,
	{d '${def:date}'}
)
