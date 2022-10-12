document.form1.cpr_codigo.value='${fld:cpr_codigo@js}';
document.form1.cpr_descripcion.value='${fld:cpr_descripcion@js}';
setComboValue('smn_centro_costo_rf','${fld:smn_centro_costo_rf}','form1');
setComboValue('cpr_estatus','${fld:cpr_estatus}','form1');
document.form1.id.value='${fld:smn_centro_produccion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.cpr_codigo.disabled=true;
 

