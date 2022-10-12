INSERT INTO smn_produccion.smn_rel_formula_item_equipos
(
	smn_rel_formula_item_equipos_id,
	smn_rel_formula_item_id,
	smn_activo_id,
	rfe_cantidad,
	smn_unidad_medida_rf,
	rfe_fecha_registro
)
VALUES
(
	${seq:nextval@smn_produccion.seq_smn_rel_formula_item_equipos},
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
