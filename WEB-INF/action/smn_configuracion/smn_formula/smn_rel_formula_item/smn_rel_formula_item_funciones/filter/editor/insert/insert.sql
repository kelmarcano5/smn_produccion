INSERT INTO smn_produccion.smn_rel_formula_item_funciones
(
	smn_rel_formula_item_funciones_id,
	smn_rel_formula_item_id,
	smn_funciones_id,
	rfe_cantidad,
	smn_unidad_medida_rf,
	rff_idioma,
	rff_usuario,
	rff_fecha_registro,
	rff_hora
)
VALUES
(
	${seq:currval@smn_produccion.seq_smn_rel_formula_item_funciones},
	${fld:smn_rel_formula_item_id},
	${fld:smn_funciones_id},
	${fld:rfe_cantidad},
	${fld:smn_unidad_medida_rf},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
