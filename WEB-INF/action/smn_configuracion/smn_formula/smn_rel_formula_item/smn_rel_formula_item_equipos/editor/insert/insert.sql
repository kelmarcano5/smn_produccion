INSERT INTO smn_produccion.smn_rel_formula_item_equipos
(
	smn_rel_formula_item_equipos_id,
	smn_rel_formula_item_id,
	smn_activo_id,
	rfe_cantidad,
	smn_unidad_medida_rf,
	rfe_idioma,
	rfe_usuario,
	rfe_fecha_registro,
	rfe_hora
)
VALUES
(
	${seq:currval@smn_produccion.seq_smn_rel_formula_item_equipos},
	${fld:smn_rel_formula_item_id},
	${fld:smn_activo_id},
	${fld:rfe_cantidad},
	${fld:smn_unidad_medida_rf},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
