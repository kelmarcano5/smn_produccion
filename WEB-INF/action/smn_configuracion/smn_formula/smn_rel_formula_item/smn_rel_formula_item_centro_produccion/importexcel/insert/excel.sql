INSERT INTO smn_produccion.smn_rel_formula_item_centro_produccion
(
	smn_rel_formula_item_centro_produccion_id,
	smn_rel_formula_item_id,
	smn_centro_produccion_id,
	smn_linea_produccion_id,
	rfc_fecha_registro
)
VALUES
(
	${seq:nextval@smn_produccion.seq_smn_rel_formula_item_centro_produccion},
	?,
	?,
	?,
	{d '${def:date}'}
)
