select
	smn_produccion.smn_documento.smn_documento_id,
	smn_produccion.smn_tipo_documento.tdc_nombre as smn_tipo_documento_id,
	case
	when smn_produccion.smn_documento.doc_tipo_movimiento='CI' then '${lbl:b_internal_consumption}'
	when smn_produccion.smn_documento.doc_tipo_movimiento='VT' then '${lbl:b_sale}'
	when smn_produccion.smn_documento.doc_tipo_movimiento='TR' then '${lbl:b_transfer}'
	end as doc_tipo_movimiento,
	case
	when smn_produccion.smn_documento.doc_tipo_orden='PL' then '${lbl:b_planned}'
	when smn_produccion.smn_documento.doc_tipo_orden='RE' then '${lbl:b_real}'
	end as doc_tipo_orden,
	case
	when smn_produccion.smn_documento.doc_estatus='AC' then '${lbl:b_active}'
	when smn_produccion.smn_documento.doc_estatus='IN' then '${lbl:b_inactive}'
	end as doc_estatus,
	smn_produccion.smn_documento.doc_codigo,
	smn_produccion.smn_documento.doc_nombre,
	smn_base.smn_documentos_generales.dcg_descripcion as smn_documento_general_rf,
	smn_base.smn_modulos.mod_nombre as smn_modulo_origen,
	smn_produccion.smn_documento.doc_fecha_registro
	
from
	smn_produccion.smn_documento
	inner join smn_produccion.smn_tipo_documento on smn_produccion.smn_tipo_documento.smn_tipo_documento_id = 	smn_produccion.smn_documento.smn_tipo_documento_id
	inner join smn_base.smn_modulos on smn_base.smn_modulos.smn_modulos_id = smn_produccion.smn_documento.smn_modulo_origen
	inner join smn_base.smn_documentos_generales on smn_base.smn_documentos_generales.smn_documentos_generales_id = smn_produccion.smn_documento.smn_documento_general_rf
