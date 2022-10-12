setComboValue('smn_usuario_rf','${fld:smn_usuario_rf}','form1');
setComboValue('rol_tipo','${fld:rol_tipo}','form1');
setComboValue('rol_estatus','${fld:rol_estatus}','form1');
document.form1.id.value='${fld:smn_rol_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

