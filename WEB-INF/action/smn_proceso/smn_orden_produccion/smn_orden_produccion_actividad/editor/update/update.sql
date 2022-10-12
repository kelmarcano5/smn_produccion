UPDATE smn_produccion.smn_orden_produccion_actividad SET
	smn_orden_produccion_id=${fld:smn_orden_produccion_id},
	smn_activo_rf=${fld:smn_activo_rf},
	smn_centro_produccion_id=${fld:smn_centro_produccion_id},
	smn_linea_produccion_id=${fld:smn_linea_produccion_id},
	smn_funciones_id=${fld:smn_funciones_id},
	opa_hora_inicial=${fld:opa_hora_inicial},
	opa_hora_final=${fld:opa_hora_final},
	opa_horas=${fld:opa_horas},
	smn_unidad_medida_rf=${fld:smn_unidad_medida_rf},
	opa_estatus=${fld:opa_estatus},
	opa_idioma='${def:locale}',
	opa_usuario='${def:user}',
	opa_fecha_registro={d '${def:date}'},
	opa_hora='${def:time}'

WHERE
	smn_orden_produccion_actividad_id=${fld:id}

