select
		smn_produccion.smn_tipo_documento.smn_tipo_documento_id,
	case
	when smn_produccion.smn_tipo_documento.tdc_tipo_produccion='OR' then '${lbl:b_ordenes}'
	when smn_produccion.smn_tipo_documento.tdc_tipo_produccion='PD' then '${lbl:b_pedido}'
	when smn_produccion.smn_tipo_documento.tdc_tipo_produccion='CO' then '${lbl:b_continuas}'
	when smn_produccion.smn_tipo_documento.tdc_tipo_produccion='TC' then '${lbl:b_tercerizadas}'
	end as tdc_tipo_produccion_combo,
	smn_produccion.smn_tipo_documento.tdc_codigo,
	smn_produccion.smn_tipo_documento.tdc_nombre,
	smn_produccion.smn_tipo_documento.tdc_tipo_produccion,
	smn_produccion.smn_tipo_documento.tdc_fecha_registro
	
from
	smn_produccion.smn_tipo_documento
