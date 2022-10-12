setComboValue('smn_tipo_documento_id','${fld:smn_tipo_documento_id}','form1');
document.form1.doc_codigo.value='${fld:doc_codigo@js}';
document.form1.doc_nombre.value='${fld:doc_nombre@js}';
setComboValue('smn_documento_general_rf','${fld:smn_documento_general_rf}','form1');
setComboValue('smn_modulo_origen','${fld:smn_modulo_origen}','form1');
setComboValue('doc_tipo_movimiento','${fld:doc_tipo_movimiento}','form1');
setComboValue('doc_tipo_orden','${fld:doc_tipo_orden}','form1');
setComboValue('doc_estatus','${fld:doc_estatus}','form1');
document.form1.id.value='${fld:smn_documento_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.doc_codigo.disabled=true;
 

