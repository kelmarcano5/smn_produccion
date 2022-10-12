UPDATE smn_produccion.smn_centro_produccion SET
	cpr_codigo=${fld:cpr_codigo},
	cpr_descripcion=${fld:cpr_descripcion},
	smn_centro_costo_rf=${fld:smn_centro_costo_rf},
	cpr_estatus=${fld:cpr_estatus},
	cpr_idioma='${def:locale}',
	cpr_usuario='${def:user}',
	cpr_fecha_registro={d '${def:date}'},
	cpr_hora='${def:time}'

WHERE
	smn_centro_produccion_id=${fld:id}

