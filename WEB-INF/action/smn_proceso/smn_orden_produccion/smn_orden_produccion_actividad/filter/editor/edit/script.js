setComboValue('smn_orden_produccion_id','${fld:smn_orden_produccion_id}','form1');
setComboValue('smn_activo_rf','${fld:smn_activo_rf}','form1');
setComboValue('smn_centro_produccion_id','${fld:smn_centro_produccion_id}','form1');
setComboValue('smn_linea_produccion_id','${fld:smn_linea_produccion_id}','form1');
setComboValue('smn_funciones_id','${fld:smn_funciones_id}','form1');
document.form1.opa_hora_inicial.value='${fld:opa_hora_inicial@js}';
document.form1.opa_hora_final.value='${fld:opa_hora_final@js}';
document.form1.opa_horas.value='${fld:opa_horas@js}';
setComboValue('smn_unidad_medida_rf','${fld:smn_unidad_medida_rf}','form1');
setComboValue('opa_estatus','${fld:opa_estatus}','form1');
document.form1.id.value='${fld:smn_orden_produccion_actividad_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

