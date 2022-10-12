select
		smn_produccion.smn_orden_produccion.smn_orden_produccion_id,
	case
	when smn_produccion.smn_orden_produccion.opr_estatus='GE' then '${lbl:b_generada}'
	when smn_produccion.smn_orden_produccion.opr_estatus='TR' then '${lbl:b_transporte}'
	when smn_produccion.smn_orden_produccion.opr_estatus='AP' then '${lbl:b_aprobada}'
	when smn_produccion.smn_orden_produccion.opr_estatus='RE' then '${lbl:b_rechazada}'
	when smn_produccion.smn_orden_produccion.opr_estatus='EN' then '${lbl:b_entregada}'
	when smn_produccion.smn_orden_produccion.opr_estatus='PE' then '${lbl:b_parcialmente_entregada}'
	when smn_produccion.smn_orden_produccion.opr_estatus='CE' then '${lbl:b_cerrada}'
	end as opr_estatus,
	smn_produccion.smn_orden_produccion.smn_modulo_rf,
	smn_produccion.smn_orden_produccion.smn_documento_origen_rf,
	smn_produccion.smn_orden_produccion.opr_numero_documento_origen,
	smn_produccion.smn_orden_produccion.smn_documento_id,
	smn_produccion.smn_orden_produccion.opr_numero_documento,
	smn_produccion.smn_orden_produccion.opr_descripcion,
	smn_produccion.smn_orden_produccion.smn_entidad_rf,
	smn_produccion.smn_orden_produccion.smn_item_rf,
	smn_produccion.smn_orden_produccion.opr_cantidad,
	smn_produccion.smn_orden_produccion.opr_fecha_despacho,
	smn_produccion.smn_orden_produccion.smn_rol_id,
	smn_produccion.smn_orden_produccion.opr_fecha_registro
	
from
	smn_produccion.smn_orden_produccion
