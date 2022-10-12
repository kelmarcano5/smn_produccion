select
		smn_produccion.smn_documento.smn_documento_id,
	smn_produccion.smn_tipo_documento.smn_tipo_documento_id,
	smn_produccion.smn_tipo_documento.tdc_codigo as tdc_codigo_pl0,
select
		smn_produccion.smn_documento.smn_documento_id,
select
		smn_produccion.smn_documento.smn_documento_id,
select
		smn_produccion.smn_documento.smn_documento_id,
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
	smn_produccion.smn_documento.smn_tipo_documento_id,
	smn_produccion.smn_documento.doc_codigo,
	smn_produccion.smn_documento.doc_nombre,
	smn_produccion.smn_documento.smn_documento_general_rf,
	smn_produccion.smn_documento.smn_modulo_origen,
	smn_produccion.smn_documento.doc_tipo_movimiento,
	smn_produccion.smn_documento.doc_tipo_orden,
	smn_produccion.smn_documento.doc_estatus,
	smn_produccion.smn_documento.doc_fecha_registro
	
from
	smn_produccion.smn_tipo_documento,
	smn_produccion.smn_documento
where
	smn_produccion.smn_tipo_documento.smn_tipo_documento_id=smn_produccion.smn_documento.smn_tipo_documento_id
