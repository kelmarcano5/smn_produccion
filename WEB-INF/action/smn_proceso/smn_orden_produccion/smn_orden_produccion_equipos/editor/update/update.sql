UPDATE smn_produccion.smn_orden_produccion_equipos SET
	smn_orden_produccion_id=${fld:smn_orden_produccion_id},
	smn_centro_produccion_id=${fld:smn_centro_produccion_id},
	smn_linea_produccion_id=${fld:smn_linea_produccion_id},
	smn_activo_rf=${fld:smn_activo_rf},
	ope_horas_uso=${fld:ope_horas_uso},
	smn_unidad_medida_rf=${fld:smn_unidad_medida_rf},
	smn_rol_id=${fld:smn_rol_id},
	ope_estatus=${fld:ope_estatus},
	ope_idioma='${def:locale}',
	ope_usuario='${def:user}',
	ope_fecha_registro={d '${def:date}'},
	ope_hora='${def:time}'

WHERE
	smn_orden_produccion_equipos_id=${fld:id}

