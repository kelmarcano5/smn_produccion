INSERT INTO smn_produccion.smn_orden_produccion_materiales
(
	smn_orden_produccion_materiales_id,
	smn_orden_produccion_id,
	smn_centro_produccion_id,
	smn_linea_produccion_id,
	smn_item_rf,
	opm_cantidad_solicitada,
	opm_cantidad_despachada,
	opm_costo_ml,
	opm_costo_ma,
	opm_estatus,
	opm_fecha_registro
)
VALUES
(
	${seq:nextval@smn_produccion.seq_smn_orden_produccion_materiales},
	?,
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
