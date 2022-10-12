document.form1.smn_rel_formula_item_id.value='${fld:smn_rel_formula_item_id@#,###,###}';
setComboValue('smn_item_id','${fld:smn_item_id}','form1');
document.form1.rfm_cantidad.value='${fld:rfm_cantidad@#,###,##0.00}';
setComboValue('smn_unidad_medida_rf','${fld:smn_unidad_medida_rf}','form1');
document.form1.id.value='${fld:smn_rel_formula_item_materiales_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

