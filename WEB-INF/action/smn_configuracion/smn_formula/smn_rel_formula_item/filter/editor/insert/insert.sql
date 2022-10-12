INSERT INTO smn_produccion.smn_rel_formula_item
(
	smn_rel_formula_item_id,
	smn_formula_id,
	smn_nivel_estructura_id
)
VALUES
(
	${seq:currval@smn_produccion.seq_smn_rel_formula_item},
	${fld:smn_formula_id},
	${fld:smn_nivel_estructura_id}
)
