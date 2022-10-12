INSERT INTO smn_produccion.smn_orden_produccion_actividad
(
	smn_orden_produccion_actividad_id,
	smn_orden_produccion_id,
	smn_activo_rf,
	smn_centro_produccion_id,
	smn_linea_produccion_id,
	smn_funciones_id,
	opa_hora_inicial,
	opa_hora_final,
	opa_horas,
	smn_unidad_medida_rf,
	opa_estatus,
	opa_idioma,
	opa_usuario,
	opa_fecha_registro,
	opa_hora
)
VALUES
(
	${seq:currval@smn_produccion.seq_smn_orden_produccion_actividad},
	${fld:smn_orden_produccion_id},
	${fld:smn_activo_rf},
	${fld:smn_centro_produccion_id},
	${fld:smn_linea_produccion_id},
	${fld:smn_funciones_id},
	${fld:opa_hora_inicial},
	${fld:opa_hora_final},
	${fld:opa_horas},
	${fld:smn_unidad_medida_rf},
	${fld:opa_estatus},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
