INSERT INTO smn_produccion.smn_linea_produccion
(
	smn_linea_produccion_id,
	lpr_codigo,
	lpr_descripcion,
	lpr_estatus,
	lpr_idioma,
	lpr_usuario,
	lpr_fecha_registro,
	lpr_hora
)
VALUES
(
	${seq:currval@smn_produccion.seq_smn_linea_produccion},
	${fld:lpr_codigo},
	${fld:lpr_descripcion},
	${fld:lpr_estatus},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
