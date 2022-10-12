document.form1.lpr_codigo.value='${fld:lpr_codigo@js}';
document.form1.lpr_descripcion.value='${fld:lpr_descripcion@js}';
setComboValue('lpr_estatus','${fld:lpr_estatus}','form1');
document.form1.id.value='${fld:smn_linea_produccion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.lpr_codigo.disabled=true;
 

