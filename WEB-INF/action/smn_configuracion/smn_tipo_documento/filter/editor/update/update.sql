UPDATE smn_produccion.smn_tipo_documento SET
	tdc_codigo=${fld:tdc_codigo},
	tdc_nombre=${fld:tdc_nombre},
	tdc_tipo_produccion=${fld:tdc_tipo_produccion},
	tdc_idioma='${def:locale}',
	tdc_usuario='${def:user}',
	tdc_fecha_registro={d '${def:date}'},
	tdc_hora='${def:time}'

WHERE
	smn_tipo_documento_id=${fld:id}

