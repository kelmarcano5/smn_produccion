UPDATE smn_produccion.smn_rel_formula_item_funciones SET
	smn_rel_formula_item_id=${fld:smn_rel_formula_item_id},
	smn_funciones_id=${fld:smn_funciones_id},
	rfe_cantidad=${fld:rfe_cantidad},
	smn_unidad_medida_rf=${fld:smn_unidad_medida_rf},
	rff_idioma='${def:locale}',
	rff_usuario='${def:user}',
	rff_fecha_registro={d '${def:date}'},
	rff_hora='${def:time}'

WHERE
	smn_rel_formula_item_funciones_id=${fld:id}

