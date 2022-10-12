INSERT INTO smn_produccion.smn_rol
(
	smn_rol_id,
	smn_usuario_rf,
	rol_tipo,
	rol_estatus,
	rol_idioma,
	rol_usuario,
	rol_fecha_registro,
	rol_hora
)
VALUES
(
	${seq:currval@smn_produccion.seq_smn_rol},
	${fld:smn_usuario_rf},
	${fld:rol_tipo},
	${fld:rol_estatus},
	'${def:locale}',
	'${def:user}',
	{d '${def:date}'},
	'${def:time}'
)
