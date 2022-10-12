setComboValue('smn_orden_produccion_id','${fld:smn_orden_produccion_id}','form1');
setComboValue('smn_centro_produccion_id','${fld:smn_centro_produccion_id}','form1');
setComboValue('smn_linea_produccion_id','${fld:smn_linea_produccion_id}','form1');
setComboValue('smn_item_rf','${fld:smn_item_rf}','form1');
document.form1.opm_cantidad_solicitada.value='${fld:opm_cantidad_solicitada@#,###,##0.00}';
document.form1.opm_cantidad_despachada.value='${fld:opm_cantidad_despachada@#,###,##0.00}';
document.form1.opm_costo_ml.value='${fld:opm_costo_ml@#,###,##0.00}';
document.form1.opm_costo_ma.value='${fld:opm_costo_ma@#,###,##0.00}';
setComboValue('opm_estatus','${fld:opm_estatus}','form1');
document.form1.id.value='${fld:smn_orden_produccion_materiales_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

