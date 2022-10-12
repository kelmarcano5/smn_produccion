INSERT INTO smn_produccion.smn_formula
(
	smn_formula_id,
	for_codigo,
	for_descripcion,
	for_estatus,
	for_idioma,
	for_usuario,
	for_fecha_registro,
	for_hora
)
VALUES
(
	${seq:currval@smn_produccion.seq_smn_formula},
	${fld:for_codigo},
	${fld:for_descripcion},
	${fld:for_estatus},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
