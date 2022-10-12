UPDATE smn_produccion.smn_linea_produccion SET
	lpr_codigo=${fld:lpr_codigo},
	lpr_descripcion=${fld:lpr_descripcion},
	lpr_estatus=${fld:lpr_estatus},
	lpr_idioma='${def:locale}',
	lpr_usuario='${def:user}',
	lpr_fecha_registro={d '${def:date}'},
	lpr_hora='${def:time}'

WHERE
	smn_linea_produccion_id=${fld:id}

