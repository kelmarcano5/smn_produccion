select
	case
		when smn_produccion.smn_tipo_documento.tdc_tipo_produccion='OR' then '${lbl:b_ordenes}'
		when smn_produccion.smn_tipo_documento.tdc_tipo_produccion='PD' then '${lbl:b_pedido}'
		when smn_produccion.smn_tipo_documento.tdc_tipo_produccion='CO' then '${lbl:b_continuas}'
		when smn_produccion.smn_tipo_documento.tdc_tipo_produccion='TC' then '${lbl:b_tercerizadas}'
	end as tdc_tipo_produccion_combo,
	smn_produccion.smn_tipo_documento.*
from 
	smn_produccion.smn_tipo_documento
where
	smn_tipo_documento_id = ${fld:id}
