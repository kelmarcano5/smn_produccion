UPDATE smn_produccion.smn_formula SET
	for_codigo=${fld:for_codigo},
	for_descripcion=${fld:for_descripcion},
	for_estatus=${fld:for_estatus},
	for_idioma='${def:locale}',
	for_usuario='${def:user}',
	for_fecha_registro={d '${def:date}'},
	for_hora='${def:time}'

WHERE
	smn_formula_id=${fld:id}

