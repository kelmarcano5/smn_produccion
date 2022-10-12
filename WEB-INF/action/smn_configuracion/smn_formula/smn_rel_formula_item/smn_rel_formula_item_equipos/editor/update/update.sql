UPDATE smn_produccion.smn_rel_formula_item_equipos SET
	smn_rel_formula_item_id=${fld:smn_rel_formula_item_id},
	smn_activo_id=${fld:smn_activo_id},
	rfe_cantidad=${fld:rfe_cantidad},
	smn_unidad_medida_rf=${fld:smn_unidad_medida_rf},
	rfe_idioma='${def:locale}',
	rfe_usuario='${def:user}',
	rfe_fecha_registro={d '${def:date}'},
	rfe_hora='${def:time}'

WHERE
	smn_rel_formula_item_equipos_id=${fld:id}

