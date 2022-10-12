select
		smn_produccion.smn_tipo_documento.tdc_codigo,
	smn_produccion.smn_tipo_documento.tdc_nombre,
	smn_produccion.smn_tipo_documento.tdc_naturaleza,
	smn_produccion.smn_tipo_documento.tdc_fecha_registro,
	smn_produccion.smn_tipo_documento.tdo_codigo,
	smn_produccion.smn_tipo_documento.tdo_descripcion,
	smn_produccion.smn_tipo_documento.tdo_estatus,
	smn_produccion.smn_tipo_documento.tdo_vigencia,
	smn_produccion.smn_tipo_documento.tdo_fecha_registro,
	smn_produccion.smn_tipo_documento.tdo_codigo,
	smn_produccion.smn_tipo_documento.tdo_descripcion,
	smn_produccion.smn_tipo_documento.tdo_tipo_movimiento,
	smn_produccion.smn_tipo_documento.tdo_estatus,
	smn_produccion.smn_tipo_documento.tdo_vigencia,
	smn_produccion.smn_tipo_documento.tdo_fecha_registro,
	smn_produccion.smn_tipo_documento.tid_codigo,
	smn_produccion.smn_tipo_documento.tid_nombre,
	smn_produccion.smn_tipo_documento.tid_empresa,
	smn_produccion.smn_tipo_documento.tid_sucursal,
	smn_produccion.smn_tipo_documento.tid_area_servicio,
	smn_produccion.smn_tipo_documento.tid_unidad_servicio,
	smn_produccion.smn_tipo_documento.tid_req_control_fiscal,
	smn_produccion.smn_tipo_documento.tid_serie,
	smn_produccion.smn_tipo_documento.tid_numero_fiscal,
	smn_produccion.smn_tipo_documento.tid_requiere_nota_recepcion,
	smn_produccion.smn_tipo_documento.tid_requiere_orden_compra,
	smn_produccion.smn_tipo_documento.tid_req_cod_imp,
	smn_produccion.smn_tipo_documento.tid_req_caja_fiscal,
	smn_produccion.smn_tipo_documento.tid_req_intercomp,
	smn_produccion.smn_tipo_documento.tid_afecta_documento,
	smn_produccion.smn_tipo_documento.tid_numero_control,
	smn_produccion.smn_tipo_documento.tid_fecha_registro,
	smn_produccion.smn_tipo_documento.smn_documento_contable_id,
	smn_produccion.smn_tipo_documento.tdo_codigo,
	smn_produccion.smn_tipo_documento.tdo_descripcion,
	smn_produccion.smn_tipo_documento.tdo_tipo_movimiento,
	smn_produccion.smn_tipo_documento.tdo_estatus,
	smn_produccion.smn_tipo_documento.tdo_vigencia,
	smn_produccion.smn_tipo_documento.tdo_fecha_registro,
	smn_produccion.smn_tipo_documento.tdc_codigo,
	smn_produccion.smn_tipo_documento.tdc_nombre,
	smn_produccion.smn_tipo_documento.tdc_naturaleza,
	smn_produccion.smn_tipo_documento.tdc_fecha_registro,
	smn_produccion.smn_tipo_documento.tdo_codigo,
	smn_produccion.smn_tipo_documento.tdo_descripcion,
	smn_produccion.smn_tipo_documento.tdo_accion,
	smn_produccion.smn_tipo_documento.tdo_estatus,
	smn_produccion.smn_tipo_documento.tdo_vigencia,
	smn_produccion.smn_tipo_documento.tdo_fecha_registro,
	smn_produccion.smn_tipo_documento.tdc_codigo,
	smn_produccion.smn_tipo_documento.tdc_nombre,
	smn_produccion.smn_tipo_documento.tdc_naturaleza,
	smn_produccion.smn_tipo_documento.tdc_fecha_registro,
	smn_produccion.smn_tipo_documento.tdo_codigo,
	smn_produccion.smn_tipo_documento.tdo_descripcion,
	smn_produccion.smn_tipo_documento.tdo_tipo_movimiento,
	smn_produccion.smn_tipo_documento.tdo_estatus,
	smn_produccion.smn_tipo_documento.tdo_vigencia,
	smn_produccion.smn_tipo_documento.tdo_fecha_registro,
	smn_produccion.smn_tipo_documento.tdc_codigo,
	smn_produccion.smn_tipo_documento.tdc_nombre,
	smn_produccion.smn_tipo_documento.tdc_naturaleza,
	smn_produccion.smn_tipo_documento.tdc_fecha_registro,
	smn_produccion.smn_tipo_documento.tdo_codigo,
	smn_produccion.smn_tipo_documento.tdo_descripcion,
	smn_produccion.smn_tipo_documento.tdo_tipo_movimiento,
	smn_produccion.smn_tipo_documento.tdo_estatus,
	smn_produccion.smn_tipo_documento.tdo_vigencia,
	smn_produccion.smn_tipo_documento.tdo_fecha_registro,
	smn_produccion.smn_tipo_documento.tdc_codigo,
	smn_produccion.smn_tipo_documento.tdc_nombre,
	smn_produccion.smn_tipo_documento.tdc_naturaleza,
	smn_produccion.smn_tipo_documento.tdc_vigencia,
	smn_produccion.smn_tipo_documento.tdc_estatus,
	smn_produccion.smn_tipo_documento.tdc_fecha_registro
from
	smn_produccion.smn_tipo_documento 
where
	smn_produccion.smn_tipo_documento.smn_tipo_documento_id = ${fld:id}
