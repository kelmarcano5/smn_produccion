setComboValue('smn_modulo_rf','${fld:smn_modulo_rf}','form1');
setComboValue('smn_documento_origen_rf','${fld:smn_documento_origen_rf}','form1');
document.form1.opr_numero_documento_origen.value='${fld:opr_numero_documento_origen@#,###,###}';
setComboValue('smn_usuario_solicitante_rf','${fld:smn_usuario_solicitante_rf}','form1');
setComboValue('smn_documento_id','${fld:smn_documento_id}','form1');
document.form1.opr_numero_documento.value='${fld:opr_numero_documento@#,###,###}';
document.form1.opr_descripcion.value='${fld:opr_descripcion@js}';
setComboValue('smn_entidad_rf','${fld:smn_entidad_rf}','form1');
setComboValue('smn_sucursal_rf','${fld:smn_sucursal_rf}','form1');
setComboValue('smn_item_rf','${fld:smn_item_rf}','form1');
document.form1.opr_cantidad.value='${fld:opr_cantidad@#,###,##0.00}';
document.form1.opr_fecha_solicitud.value='${fld:opr_fecha_solicitud@dd-MM-yyyy}';
document.form1.opr_fecha_despacho.value='${fld:opr_fecha_despacho@dd-MM-yyyy}';
setComboValue('smn_rol_id','${fld:smn_rol_id}','form1');
setComboValue('opr_estatus','${fld:opr_estatus}','form1');
document.form1.id.value='${fld:smn_orden_produccion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

