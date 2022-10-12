UPDATE smn_produccion.smn_rol SET
	smn_usuario_rf=${fld:smn_usuario_rf},
	rol_tipo=${fld:rol_tipo},
	rol_estatus=${fld:rol_estatus},
	rol_idioma='${def:locale}',
	rol_usuario='${def:user}',
	rol_fecha_registro={d '${def:date}'},
	rol_hora='${def:time}'

WHERE
	smn_rol_id=${fld:id}

