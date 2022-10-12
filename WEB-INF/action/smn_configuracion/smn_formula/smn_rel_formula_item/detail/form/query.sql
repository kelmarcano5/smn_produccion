select
	smn_produccion.smn_rel_formula_item.smn_rel_formula_item_id,
	smn_produccion.smn_formula.smn_formula_id,
	smn_produccion.smn_formula.for_codigo ||' - '|| smn_produccion.smn_formula.for_descripcion as smn_formula_id_combo,
	smn_base.smn_nivel_estructura.nes_codigo ||' - '|| smn_base.smn_nivel_estructura.nes_nombre as smn_nivel_estructura_id_combo
	
from
	smn_produccion.smn_rel_formula_item
	inner join smn_produccion.smn_formula on smn_produccion.smn_formula.smn_formula_id = smn_produccion.smn_rel_formula_item.smn_formula_id
	inner join smn_base.smn_nivel_estructura on smn_base.smn_nivel_estructura.smn_nivel_estructura_id = smn_produccion.smn_rel_formula_item.smn_nivel_estructura_id
where
	smn_produccion.smn_formula.smn_formula_id=smn_produccion.smn_rel_formula_item.smn_formula_id 
 and 
	smn_rel_formula_item_id = ${fld:id}
