INSERT INTO smn_produccion.smn_rel_formula_item_centro_produccion
(
	smn_rel_formula_item_centro_produccion_id,
	smn_rel_formula_item_id,
	smn_centro_produccion_id,
	smn_linea_produccion_id,
	rfc_idioma,
	rfc_usuario,
	rfc_fecha_registro,
	rfc_hora
)
VALUES
(
	${seq:currval@smn_produccion.seq_smn_rel_formula_item_centro_produccion},
	${fld:smn_rel_formula_item_id},
	${fld:smn_centro_produccion_id},
	${fld:smn_linea_produccion_id},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
