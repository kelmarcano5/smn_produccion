UPDATE smn_produccion.smn_orden_produccion_materiales SET
	smn_orden_produccion_id=${fld:smn_orden_produccion_id},
	smn_centro_produccion_id=${fld:smn_centro_produccion_id},
	smn_linea_produccion_id=${fld:smn_linea_produccion_id},
	smn_item_rf=${fld:smn_item_rf},
	opm_cantidad_solicitada=${fld:opm_cantidad_solicitada},
	opm_cantidad_despachada=${fld:opm_cantidad_despachada},
	opm_costo_ml=${fld:opm_costo_ml},
	opm_costo_ma=${fld:opm_costo_ma},
	opm_estatus=${fld:opm_estatus},
	opm_idioma='${def:locale}',
	opm_usuario='${def:user}',
	opm_fecha_registro={d '${def:date}'},
	opm_hora='${def:time}'

WHERE
	smn_orden_produccion_materiales_id=${fld:id}

