INSERT INTO smn_produccion.smn_rel_formula_item_materiales
(
	smn_rel_formula_item_materiales_id,
	smn_rel_formula_item_id,
	smn_item_id,
	rfm_cantidad,
	smn_unidad_medida_rf,
	rfm_fecha_registro
)
VALUES
(
	${seq:nextval@smn_produccion.seq_smn_rel_formula_item_materiales},
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
