INSERT INTO smn_produccion.smn_formula
(
	smn_formula_id,
	for_codigo,
	for_descripcion,
	for_estatus,
	for_fecha_registro
)
VALUES
(
	${seq:nextval@smn_produccion.seq_smn_formula},
	?,
	?,
	?,
	{d '${def:date}'}
)
