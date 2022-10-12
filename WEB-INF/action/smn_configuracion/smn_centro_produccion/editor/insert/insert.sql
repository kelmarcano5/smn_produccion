INSERT INTO smn_produccion.smn_centro_produccion
(
	smn_centro_produccion_id,
	cpr_codigo,
	cpr_descripcion,
	smn_centro_costo_rf,
	cpr_estatus,
	cpr_idioma,
	cpr_usuario,
	cpr_fecha_registro,
	cpr_hora
)
VALUES
(
	${seq:currval@smn_produccion.seq_smn_centro_produccion},
	${fld:cpr_codigo},
	${fld:cpr_descripcion},
	${fld:smn_centro_costo_rf},
	${fld:cpr_estatus},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
