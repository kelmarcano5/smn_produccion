document.form1.tdc_codigo.value='${fld:tdc_codigo@js}';
document.form1.tdc_nombre.value='${fld:tdc_nombre@js}';
setComboValue('tdc_tipo_produccion','${fld:tdc_tipo_produccion}','form1');
document.form1.id.value='${fld:smn_tipo_documento_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


document.form1.tdc_codigo.disabled=true;
 

