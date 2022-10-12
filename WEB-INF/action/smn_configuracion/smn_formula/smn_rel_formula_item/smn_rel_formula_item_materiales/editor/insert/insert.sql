INSERT INTO smn_produccion.smn_rel_formula_item_materiales
(
	smn_rel_formula_item_materiales_id,
	smn_rel_formula_item_id,
	smn_item_id,
	rfm_cantidad,
	smn_unidad_medida_rf,
	rfm_idioma,
	rfm_usuario,
	rfm_fecha_registro,
	rfm_hora
)
VALUES
(
	${seq:currval@smn_produccion.seq_smn_rel_formula_item_materiales},
	${fld:smn_rel_formula_item_id},
	${fld:smn_item_id},
	${fld:rfm_cantidad},
	${fld:smn_unidad_medida_rf},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
