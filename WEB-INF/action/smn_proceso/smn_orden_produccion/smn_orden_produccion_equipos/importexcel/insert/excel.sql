INSERT INTO smn_produccion.smn_orden_produccion_equipos
(
	smn_orden_produccion_equipos_id,
	smn_orden_produccion_id,
	smn_centro_produccion_id,
	smn_linea_produccion_id,
	smn_activo_rf,
	ope_horas_uso,
	smn_unidad_medida_rf,
	smn_rol_id,
	ope_estatus,
	ope_fecha_registro
)
VALUES
(
	${seq:nextval@smn_produccion.seq_smn_orden_produccion_equipos},
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	{d '${def:date}'}
)
