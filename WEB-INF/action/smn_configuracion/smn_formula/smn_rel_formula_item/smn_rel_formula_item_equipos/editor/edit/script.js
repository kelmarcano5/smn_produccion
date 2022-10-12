document.form1.smn_rel_formula_item_id.value='${fld:smn_rel_formula_item_id@#,###,###}';
setComboValue('smn_activo_id','${fld:smn_activo_id}','form1');
document.form1.rfe_cantidad.value='${fld:rfe_cantidad@#,###,##0.00}';
setComboValue('smn_unidad_medida_rf','${fld:smn_unidad_medida_rf}','form1');
document.form1.id.value='${fld:smn_rel_formula_item_equipos_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

