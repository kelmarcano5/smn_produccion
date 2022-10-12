setComboValue('smn_orden_produccion_id','${fld:smn_orden_produccion_id}','form1');
setComboValue('smn_centro_produccion_id','${fld:smn_centro_produccion_id}','form1');
setComboValue('smn_linea_produccion_id','${fld:smn_linea_produccion_id}','form1');
setComboValue('smn_activo_rf','${fld:smn_activo_rf}','form1');
document.form1.ope_horas_uso.value='${fld:ope_horas_uso@#,###,###}';
setComboValue('smn_unidad_medida_rf','${fld:smn_unidad_medida_rf}','form1');
setComboValue('smn_rol_id','${fld:smn_rol_id}','form1');
setComboValue('ope_estatus','${fld:ope_estatus}','form1');
document.form1.id.value='${fld:smn_orden_produccion_equipos_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

