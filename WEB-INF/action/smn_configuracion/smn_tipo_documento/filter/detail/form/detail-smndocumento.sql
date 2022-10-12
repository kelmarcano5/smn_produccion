select
select
select
	case
	when smn_produccion.smn_documento.doc_tipo_movimiento='CI' then '${lbl:b_internal_consumption}'
	when smn_produccion.smn_documento.doc_tipo_movimiento='VT' then '${lbl:b_sale}'
	when smn_produccion.smn_documento.doc_tipo_movimiento='TR' then '${lbl:b_transfer}'
	end as doc_tipo_movimiento_combo,
	case
	when smn_produccion.smn_documento.doc_tipo_orden='PL' then '${lbl:b_planned}'
	when smn_produccion.smn_documento.doc_tipo_orden='RE' then '${lbl:b_real}'
	end as doc_tipo_orden_combo,
	case
	when smn_produccion.smn_documento.doc_estatus='AC' then '${lbl:b_active}'
	when smn_produccion.smn_documento.doc_estatus='IN' then '${lbl:b_inactive}'
	end as doc_estatus_combo,
	smn_produccion.smn_documento.*
from
	smn_produccion.smn_documento,
	smn_produccion.smn_tipo_documento
where
		smn_produccion.smn_documento.smn_tipo_documento_id=smn_produccion.smn_tipo_documento.smn_tipo_documento_id and
		smn_produccion.smn_tipo_documento.smn_tipo_documento_id=${fld:id}
