setComboValue('smn_rel_formula_item_id','${fld:smn_rel_formula_item_id}','form1');
setComboValue('smn_centro_produccion_id','${fld:smn_centro_produccion_id}','form1');
setComboValue('smn_linea_produccion_id','${fld:smn_linea_produccion_id}','form1');
document.form1.id.value='${fld:smn_rel_formula_item_centro_produccion_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

