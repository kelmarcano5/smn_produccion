setComboValue('smn_formula_id','${fld:smn_formula_id}','form1');
setComboValue('smn_nivel_estructura_id','${fld:smn_nivel_estructura_id}','form1');
document.form1.id.value='${fld:smn_rel_formula_item_id@#,###,###}';
 
document.getElementById("formTitle").innerHTML = "${lbl:b_edit_record}";
document.getElementById("grabar").disabled=false;
setFocusOnForm("form1");


 

