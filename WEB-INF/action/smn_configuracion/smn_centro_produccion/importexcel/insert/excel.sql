INSERT INTO smn_produccion.smn_centro_produccion
(
	smn_centro_produccion_id,
	cpr_codigo,
	cpr_descripcion,
	smn_centro_costo_rf,
	cpr_estatus,
	cpr_fecha_registro
)
VALUES
(
	${seq:nextval@smn_produccion.seq_smn_centro_produccion},
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
