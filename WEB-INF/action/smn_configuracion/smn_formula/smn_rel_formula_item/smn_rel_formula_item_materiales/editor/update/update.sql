UPDATE smn_produccion.smn_rel_formula_item_materiales SET
	smn_rel_formula_item_id=${fld:smn_rel_formula_item_id},
	smn_item_id=${fld:smn_item_id},
	rfm_cantidad=${fld:rfm_cantidad},
	smn_unidad_medida_rf=${fld:smn_unidad_medida_rf},
	rfm_idioma='${def:locale}',
	rfm_usuario='${def:user}',
	rfm_fecha_registro={d '${def:date}'},
	rfm_hora='${def:time}'

WHERE
	smn_rel_formula_item_materiales_id=${fld:id}

