document.form1.for_codigo.value='${fld:for_codigo@js}';
document.form1.for_descripcion.value='${fld:for_descripcion@js}';
setComboValue('for_estatus','${fld:for_estatus}','form1');
document.form1.id.value='${fld:smn_formula_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.for_codigo.disabled=true;
 

