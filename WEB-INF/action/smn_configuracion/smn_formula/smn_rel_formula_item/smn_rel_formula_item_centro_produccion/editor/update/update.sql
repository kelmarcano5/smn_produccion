UPDATE smn_produccion.smn_rel_formula_item_centro_produccion SET
	smn_rel_formula_item_id=${fld:smn_rel_formula_item_id},
	smn_centro_produccion_id=${fld:smn_centro_produccion_id},
	smn_linea_produccion_id=${fld:smn_linea_produccion_id},
	rfc_idioma='${def:locale}',
	rfc_usuario='${def:user}',
	rfc_fecha_registro={d '${def:date}'},
	rfc_hora='${def:time}'

WHERE
	smn_rel_formula_item_centro_produccion_id=${fld:id}

