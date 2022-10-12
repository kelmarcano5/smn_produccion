INSERT INTO smn_produccion.smn_rol
(
	smn_rol_id,
	smn_usuario_rf,
	rol_tipo,
	rol_estatus,
	rol_fecha_registro
)
VALUES
(
	${seq:nextval@smn_produccion.seq_smn_rol},
	?,
	?,
	?,
	{d '${def:date}'}
)
