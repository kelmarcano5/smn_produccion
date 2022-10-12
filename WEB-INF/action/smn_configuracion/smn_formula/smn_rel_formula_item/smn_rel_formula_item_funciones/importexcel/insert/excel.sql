INSERT INTO smn_produccion.smn_rel_formula_item_funciones
(
	smn_rel_formula_item_funciones_id,
	smn_rel_formula_item_id,
	smn_funciones_id,
	rfe_cantidad,
	smn_unidad_medida_rf,
	rff_fecha_registro
)
VALUES
(
	${seq:nextval@smn_produccion.seq_smn_rel_formula_item_funciones},
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
